/*
 * list.h
 *
 * 
 * Author: mattens
 */

#ifndef LIST_H_
#define LIST_H_
/* ------------------------------------------------------------------------- */
#include <stddef.h>
#include "tforlist.h"
/* ------------------------------------------------------------------------- */
typedef void (*FCallbackOnValue)(TValueList*);
/* ------------------------------------------------------------------------- */
struct TList;
struct __TNodeList;
typedef struct __TNodeList* TIteratorList;
/* ------------------------------------------------------------------------- */
 struct TList* CreateList();
 
 int IsEmptyList(struct TList* pL);
 
 int SizeOfList(struct TList* pL);
 
 TValueList* GetPDataInList(TIteratorList iter);
 
 TIteratorList NextInList(TIteratorList iter);
 
 TIteratorList PreviousInList(TIteratorList iter);
 
 void DestroyList(struct TList* pL);
 
 void WalkSequenceList(FCallbackOnValue funct, TIteratorList first, TIteratorList last);
 void EraseSequenceInList(struct TList* pL, TIteratorList first, TIteratorList last);
 
 TIteratorList BeginOfList(struct TList* pL);
 TIteratorList EndOfList(struct TList* pL);
 
 void InsertInList(struct TList* pL, TIteratorList iter, TValueList* carac);
 
 TIteratorList EraseInList(struct TList* pList, TIteratorList it);
 
/* ------------------------------------------------------------------------- */
#endif /* LIST_H_ */
