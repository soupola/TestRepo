/*
 * list.c
 *
 * 
 * Author: mattens
 */
/* ------------------------------------------------------------------------- */
#define __DEBUG 0
/* ------------------------------------------------------------------------- */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "list.h"
/* ------------------------------------------------------------------------- */
typedef int bool;
#define false 0
#define true 1
/* ------------------------------------------------------------------------- */
struct TList {
	struct __TNodeList* _pEndNode;
	size_t _nodeCount;
};
/* ------------------------------------------------------------------------- */
typedef struct __TNodeList _TNode;
typedef struct __TNodeList* _TPNode;
struct __TNodeList {
	struct __TNodeList * pPrevious;
	struct __TNodeList * pNext;
	TValueList value;
};
/* ------------------------------------------------------------------------- */
/* Declaration of prototypes of utilities funtions                           */
static _TPNode _CreateHeaderNode();
static _TPNode _CreateNode(const TValueList* pv, const _TPNode _pPrevious,
		const _TPNode _pNext);
/* ------------------------------------------------------------------------- */
/* Definition of funtions declared in list.h                                 */
 struct TList* CreateList()
 {
	 struct TList* plist;
	 plist = malloc(sizeof(struct TList));
	 plist->_nodeCount = 0;
	 plist->_pEndNode = _CreateHeaderNode();
	 return plist;
 }
 
 static _TPNode _CreateHeaderNode()
 {
	 _TPNode bidon;
	 bidon = malloc(sizeof(struct __TNodeList));
	 bidon->pPrevious = bidon;
	 bidon->pNext = bidon;
	 return bidon;
 }
 
 
 TIteratorList NextInList(TIteratorList iter)
 {
	 return iter->pNext;
 } 
 
 TIteratorList PreviousInList(TIteratorList iter)
 {
	 return iter->pPrevious;
 }
 
bool IsEmptyList(struct TList* pL)
  {
	  return (pL->_nodeCount > 0);
  }
  
TValueList* GetPDataInList(TIteratorList iter)
{
	return &(iter->value);
}

static _TPNode _CreateNode(const TValueList* pv, const _TPNode _pPrevious,const _TPNode _pNext)
 {
	_TPNode noeud;
	noeud = malloc(sizeof(struct __TNodeList));
	noeud->pNext = _pNext;
	noeud->pPrevious = _pPrevious;
	noeud->value = *pv;
	return noeud;
 }
 
 void InsertInList(struct TList* pL, TIteratorList iter, TValueList* carac)
 {
	_TPNode nouveau = _CreateNode(carac, iter->pPrevious, iter->pNext);
	pL->_nodeCount++;
	iter->pPrevious = nouveau;
	iter->pPrevious->pNext=nouveau;
 }

 int SizeOfList(struct TList* pL)
 {
	return pL->_nodeCount;
 }
 
 TIteratorList BeginOfList(struct TList* pL)
 {
	return pL->_pEndNode->pNext;
 }
	
	
TIteratorList EndOfList(struct TList* pL)
{
	return pL->_pEndNode->pPrevious;
}

 TIteratorList EraseInList(struct TList* pList, TIteratorList it)
{
	TIteratorList iter = it->pNext;
	pList->_nodeCount--;
	it->pPrevious->pNext = it->pNext;
	it->pNext->pPrevious = it->pPrevious;
	free(it);
	
	return iter;
	
}

void WalkSequenceList(FCallbackOnValue funct, TIteratorList first, TIteratorList last)
{
	TIteratorList iter;
	for(iter = first; iter != last; NextInList(iter))
	{
		funct(GetPDataInList(iter));
	}
}

void EraseSequenceInList(struct TList* pL, TIteratorList first, TIteratorList last)
{
	TIteratorList iter;
	for(iter = first; iter != last; NextInList(iter))
	{
		EraseInList(pL,iter);
	}
}

 void DestroyList(struct TList* pL)
 {
	 free(pL);
 }
