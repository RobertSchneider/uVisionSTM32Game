#line 1 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"









 


#line 1 "..\\EmbSysLib\\Lib\\Src\\lib.h"









 








#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"









 








#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.h"









 










#line 29 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.h"


#line 68 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.h"







#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/System.h"







 












 
class cSystem
{
  public:
    
    
 
    typedef enum
    {
      WD_TIMEOUT_16ms = 0,  
      WD_TIMEOUT_32ms,      
      WD_TIMEOUT_65ms,      
      WD_TIMEOUT_130ms,     
      WD_TIMEOUT_260ms,     
      WD_TIMEOUT_520ms,     
      WD_TIMEOUT_1000ms,    
      WD_TIMEOUT_2000ms     
    } MODE;

    
    



 
    cSystem( unsigned char disableInterrupts = false );

    
    
 
    void start( void );

    
    



 
    static void disableInterrupt( void );

    
    



 
    static void enableInterrupt( void );

    
    

 
    static void enterISR( void );

    
    

 
    static void leaveISR(void);

    
    

 
    static void enableWatchdog( MODE mode );

    
    
 
    static void disableWatchdog( void );

    
    
 
    static void feedWatchdog( void );

    
    
 
    static void reset( void );

    
    

 


    
    


 
    static void delayMicroSec( unsigned short delay );

    
    


 
    static void delayMilliSec( unsigned short delay );

  private:
    
    static unsigned char cntInterrupt;

}; 




 
extern "C" 
{
  void SystemInit(void);
}

#line 76 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/Std.h"









 






#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"
 
 
 




 
 



 













  


 









      namespace std {

          extern "C" {





  
  typedef unsigned int size_t;








#line 75 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { __int64 quot, rem; } lldiv_t;
    


#line 96 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"
   



 

   




 
#line 115 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) __int64 atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) __int64 strtoll(const char * __restrict  ,
                               char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned __int64 strtoull(const char * __restrict  ,
                                         char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 

    

 
    typedef void (* __C_exitfuncptr)();
    extern "C++"
    inline int atexit(void (* __func)()) {
      return atexit((__C_exitfuncptr)__func);
    }



extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 

    

 
    typedef int (* __C_compareprocptr)(const void *, const void *);
    extern "C++"
    void *bsearch(const void * __key, const void * __base,
              size_t __nmemb, size_t __size,
              int (* __compar)(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
    extern "C++"
    inline void *bsearch(const void * __key, const void * __base,
              size_t __nmemb, size_t __size,
              int (* __compar)(const void *, const void *)) {
      return bsearch(__key, __base, __nmemb, __size, (__C_compareprocptr)__compar);
    }



extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 


    

     
    extern "C++"
    void qsort(void * __base, size_t __nmemb, size_t __size,
               int (* __compar)(const void *, const void *)) __attribute__((__nonnull__(1,4)));
    extern "C++"
    inline void qsort(void * __base, size_t __nmemb, size_t __size,
                      int (* __compar)(const void *, const void *)) {
      qsort(__base, __nmemb, __size, (__C_compareprocptr)__compar);
    }


extern __declspec(__nothrow) __pure int abs(int  );
   



 

extern __declspec(__nothrow) __pure div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __pure long int labs(long int  );
   



 

   extern "C++" inline __declspec(__nothrow) __pure long abs(long int x) { return labs(x); }


extern __declspec(__nothrow) __pure ldiv_t ldiv(long int  , long int  );
   











 

   extern "C++" inline __declspec(__nothrow) __pure ldiv_t div(long int __numer, long int __denom) {
       return ldiv(__numer, __denom);
   }



extern __declspec(__nothrow) __pure __int64 llabs(__int64  );
   



 

   extern "C++" inline __declspec(__nothrow) __pure __int64 abs(__int64 x) { return llabs(x); }


extern __declspec(__nothrow) __pure lldiv_t lldiv(__int64  , __int64  );
   











 

   extern "C++" inline __declspec(__nothrow) __pure lldiv_t div(__int64 __numer, __int64 __denom) {
       return lldiv(__numer, __denom);
   }





 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __pure __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __pure __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __pure __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 



 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);


         }   
      }   










        using ::std::atoll;
        using ::std::lldiv_t;

      using ::std::div_t;
      using ::std::ldiv_t;
      using ::std::atof;
      using ::std::atoi;
      using ::std::atol;
      using ::std::strtod;

      using ::std::strtof;
      using ::std::strtold;

      using ::std::strtol;
      using ::std::strtoul;
      using ::std::strtoll;
      using ::std::strtoull;
      using ::std::rand;
      using ::std::srand;
      using ::std::_rand_state;
      using ::std::_rand_r;
      using ::std::_srand_r;
      using ::std::_ANSI_rand_state;
      using ::std::_ANSI_rand_r;
      using ::std::_ANSI_srand_r;
      using ::std::calloc;
      using ::std::free;
      using ::std::malloc;
      using ::std::realloc;

      using ::std::posix_memalign;

      using ::std::__heapprt;
      using ::std::__heapstats;
      using ::std::__heapvalid;
      using ::std::abort;
      using ::std::atexit;
      using ::std::exit;
      using ::std::_Exit;
      using ::std::getenv;
      using ::std::system;
      using ::std::bsearch;
      using ::std::qsort;
      using ::std::abs;
      using ::std::div;
      using ::std::labs;
      using ::std::ldiv;

        using ::std::llabs;
        using ::std::lldiv;

      using ::std::__sdiv32by16;
      using ::std::__udiv32by16;
      using ::std::__sdiv64by32;
      using ::std::__rt_sdiv32by16;
      using ::std::__rt_udiv32by16;
      using ::std::__rt_sdiv64by32;
      using ::std::__fp_status;
      using ::std::mblen;
      using ::std::mbtowc;
      using ::std::wctomb;
      using ::std::mbstowcs;
      using ::std::wcstombs;
      using ::std::__use_realtime_heap;
      using ::std::__use_realtime_division;
      using ::std::__use_two_region_memory;
      using ::std::__use_no_heap;
      using ::std::__use_no_heap_region;
      using ::std::__C_library_version_string;
      using ::std::__C_library_version_number;
      using ::std::size_t;
      using ::std::__aeabi_MB_CUR_MAX;




 

#line 18 "..\\EmbSysLib\\Lib\\Src\\Std/Std.h"
#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\string.h"
 
 
 
 




 








 













        namespace std {

        extern "C" {





  
  typedef unsigned int size_t;








extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 



extern __declspec(__nothrow) const void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
extern "C++" void *memchr(void * __s, int __c, size_t __n) __attribute__((__nonnull__(1)));
extern "C++" inline void *memchr(void * __s, int __c, size_t __n)
    { return const_cast<void *>(memchr(const_cast<const void *>(__s), __c, __n)); }



   





 


extern __declspec(__nothrow) const char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));
extern "C++" char *strchr(char * __s, int __c) __attribute__((__nonnull__(1)));
extern "C++" inline char *strchr(char * __s, int __c)
    { return const_cast<char *>(strchr(const_cast<const char *>(__s), __c)); }



   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 


extern __declspec(__nothrow) const char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
extern "C++" char *strpbrk(char * __s1, const char * __s2) __attribute__((__nonnull__(1,2)));
extern "C++" inline char *strpbrk(char * __s1, const char * __s2)
    { return const_cast<char *>(strpbrk(const_cast<const char *>(__s1), __s2)); }



   




 


extern __declspec(__nothrow) const char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));
extern "C++" char *strrchr(char * __s, int __c) __attribute__((__nonnull__(1)));
extern "C++" inline char *strrchr(char * __s, int __c)
    { return const_cast<char *>(strrchr(const_cast<const char *>(__s), __c)); }



   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 


extern __declspec(__nothrow) const char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
extern "C++" char *strstr(char * __s1, const char * __s2) __attribute__((__nonnull__(1,2)));
extern "C++" inline char *strstr(char * __s1, const char * __s2)
    { return const_cast<char *>(strstr(const_cast<const char *>(__s1), __s2)); }



   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 


         }   
      }   





      using ::std::size_t;
      using ::std::memcpy;
      using ::std::memmove;
      using ::std::strcpy;
      using ::std::strncpy;
      using ::std::strcat;
      using ::std::strncat;
      using ::std::memcmp;
      using ::std::strcmp;
      using ::std::strncmp;
      using ::std::strcasecmp;
      using ::std::strncasecmp;
      using ::std::strcoll;
      using ::std::strxfrm;
      using ::std::memchr;
      using ::std::strchr;
      using ::std::strcspn;
      using ::std::strpbrk;
      using ::std::strrchr;
      using ::std::strspn;
      using ::std::strstr;
      using ::std::strtok;

      using ::std::strtok_r;

      using ::std::_strtok_r;
      using ::std::memset;
      using ::std::strerror;
      using ::std::strlen;
      using ::std::strlcpy;
      using ::std::strlcat;
      using ::std::_membitcpybl;
      using ::std::_membitcpybb;
      using ::std::_membitcpyhl;
      using ::std::_membitcpyhb;
      using ::std::_membitcpywl;
      using ::std::_membitcpywb;
      using ::std::_membitmovebl;
      using ::std::_membitmovebb;
      using ::std::_membitmovehl;
      using ::std::_membitmovehb;
      using ::std::_membitmovewl;
      using ::std::_membitmovewb;





 

#line 19 "..\\EmbSysLib\\Lib\\Src\\Std/Std.h"
#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
 
 
 





 






 















      namespace std {

        extern "C" {





  
  typedef unsigned int size_t;    








 
 

 
  typedef struct __va_list __va_list;





   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 129 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 
extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 

    inline int getchar() { return getc((& ::std:: __stdin)); }




   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 

    inline int putchar(int __c) { return putc(__c, (& ::std:: __stdout)); }




   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 


        }   
      }   








    using ::std::size_t;
    using ::std::fpos_t;
    using ::std::FILE;
    using ::std::remove;
    using ::std::rename;
    using ::std::tmpfile;
    using ::std::tmpnam;
    using ::std::fclose;
    using ::std::fflush;
    using ::std::fopen;
    using ::std::freopen;
    using ::std::setbuf;
    using ::std::setvbuf;
    using ::std::fprintf;
    using ::std::_fprintf;
    using ::std::printf;
    using ::std::_printf;
    using ::std::sprintf;
    using ::std::_sprintf;

      using ::std::snprintf;
      using ::std::vsnprintf;
      using ::std::vfscanf;
      using ::std::vscanf;
      using ::std::vsscanf;

    using ::std::_snprintf;
    using ::std::_vsnprintf;
    using ::std::fscanf;
    using ::std::_fscanf;
    using ::std::scanf;
    using ::std::_scanf;
    using ::std::sscanf;
    using ::std::_sscanf;
    using ::std::_vfscanf;
    using ::std::_vscanf;
    using ::std::_vsscanf;
    using ::std::vprintf;
    using ::std::_vprintf;
    using ::std::vfprintf;
    using ::std::_vfprintf;
    using ::std::vsprintf;
    using ::std::_vsprintf;
    using ::std::fgetc;
    using ::std::fgets;
    using ::std::fputc;
    using ::std::fputs;
    using ::std::getc;
    using ::std::getchar;
    using ::std::gets;
    using ::std::putc;
    using ::std::putchar;
    using ::std::puts;
    using ::std::ungetc;
    using ::std::fread;
    using ::std::__fread_bytes_avail;
    using ::std::fwrite;
    using ::std::fgetpos;
    using ::std::fseek;
    using ::std::fsetpos;
    using ::std::ftell;
    using ::std::rewind;
    using ::std::clearerr;
    using ::std::feof;
    using ::std::ferror;
    using ::std::perror;
    using ::std::_fisatty;
    using ::std::__use_no_semihosting_swi;
    using ::std::__use_no_semihosting;




 

#line 20 "..\\EmbSysLib\\Lib\\Src\\Std/Std.h"






 
template <class T> inline T MAX( T x, T y )
{
  if( x > y )
    return( x );
  else
    return( y );
}





 
template <class T> inline T MIN( T x, T y )
{
  if( x < y )
    return( x );
  else
    return( y );
}











 
template <class T> inline T RANGE( T x, T min, T max )
{
  if( x > max )
    return( max );
  if( x < min )
    return( min );
  return( x );
}



const float PI = (float)3.1415926535897932384626433832795;

#line 77 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.h"





#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"











 






#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\inttypes.h"
 
 





 

 








#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"
 
 





 











      namespace std {

          extern "C" {










 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     
typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;

     
typedef   signed       __int64 intmax_t;
typedef unsigned       __int64 uintmax_t;


#line 203 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"

#line 222 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"


         }   
      }   





      using ::std::int8_t;
      using ::std::int16_t;
      using ::std::int32_t;
      using ::std::int64_t;
      using ::std::uint8_t;
      using ::std::uint16_t;
      using ::std::uint32_t;
      using ::std::uint64_t;
      using ::std::int_least8_t;
      using ::std::int_least16_t;
      using ::std::int_least32_t;
      using ::std::int_least64_t;
      using ::std::uint_least8_t;
      using ::std::uint_least16_t;
      using ::std::uint_least32_t;
      using ::std::uint_least64_t;
      using ::std::int_fast8_t;
      using ::std::int_fast16_t;
      using ::std::int_fast32_t;
      using ::std::int_fast64_t;
      using ::std::uint_fast8_t;
      using ::std::uint_fast16_t;
      using ::std::uint_fast32_t;
      using ::std::uint_fast64_t;
      using ::std::intptr_t;
      using ::std::uintptr_t;
      using ::std::intmax_t;
      using ::std::uintmax_t;





 



#line 20 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\inttypes.h"

#line 191 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\inttypes.h"

#line 209 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\inttypes.h"

typedef struct imaxdiv_t { intmax_t quot, rem; } imaxdiv_t;
    


extern "C" {


__declspec(__nothrow) intmax_t strtoimax(const char * __restrict  ,
                   char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
     
__declspec(__nothrow) uintmax_t strtoumax(const char * __restrict  ,
                    char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
     

__declspec(__nothrow) intmax_t wcstoimax(const wchar_t * __restrict  ,
                   wchar_t ** __restrict  , int  ) __attribute__((__nonnull__(1)));
__declspec(__nothrow) uintmax_t wcstoumax(const wchar_t * __restrict  ,
                    wchar_t ** __restrict  , int  ) __attribute__((__nonnull__(1)));

extern __declspec(__nothrow) __pure intmax_t imaxabs(intmax_t  );
   



 
extern __declspec(__nothrow) __pure imaxdiv_t imaxdiv(intmax_t  , intmax_t  );
   











 


}




 

#line 20 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 21 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
  

#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/STM32F4xx.h"













































 



 



 
    




 extern "C" {

   


 



 

#line 87 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/STM32F4xx.h"
   


 





 
   




 
#line 111 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/STM32F4xx.h"
                                             


 



 

#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"









































 



 



 





 extern "C" {





 



 








 



 




 
typedef enum
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      
 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMP_STAMP_IRQn             = 2,       
  RTC_WKUP_IRQn               = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Stream0_IRQn           = 11,      
  DMA1_Stream1_IRQn           = 12,      
  DMA1_Stream2_IRQn           = 13,      
  DMA1_Stream3_IRQn           = 14,      
  DMA1_Stream4_IRQn           = 15,      
  DMA1_Stream5_IRQn           = 16,      
  DMA1_Stream6_IRQn           = 17,      
  ADC_IRQn                    = 18,      
  CAN1_TX_IRQn                = 19,      
  CAN1_RX0_IRQn               = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_TIM9_IRQn          = 24,      
  TIM1_UP_TIM10_IRQn          = 25,      
  TIM1_TRG_COM_TIM11_IRQn     = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  OTG_FS_WKUP_IRQn            = 42,      
  TIM8_BRK_TIM12_IRQn         = 43,      
  TIM8_UP_TIM13_IRQn          = 44,      
  TIM8_TRG_COM_TIM14_IRQn     = 45,      
  TIM8_CC_IRQn                = 46,      
  DMA1_Stream7_IRQn           = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_DAC_IRQn               = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Stream0_IRQn           = 56,      
  DMA2_Stream1_IRQn           = 57,      
  DMA2_Stream2_IRQn           = 58,      
  DMA2_Stream3_IRQn           = 59,      
  DMA2_Stream4_IRQn           = 60,      
  ETH_IRQn                    = 61,      
  ETH_WKUP_IRQn               = 62,      
  CAN2_TX_IRQn                = 63,      
  CAN2_RX0_IRQn               = 64,      
  CAN2_RX1_IRQn               = 65,      
  CAN2_SCE_IRQn               = 66,      
  OTG_FS_IRQn                 = 67,      
  DMA2_Stream5_IRQn           = 68,      
  DMA2_Stream6_IRQn           = 69,      
  DMA2_Stream7_IRQn           = 70,      
  USART6_IRQn                 = 71,      
  I2C3_EV_IRQn                = 72,      
  I2C3_ER_IRQn                = 73,      
  OTG_HS_EP1_OUT_IRQn         = 74,      
  OTG_HS_EP1_IN_IRQn          = 75,      
  OTG_HS_WKUP_IRQn            = 76,      
  OTG_HS_IRQn                 = 77,      
  DCMI_IRQn                   = 78,      
  HASH_RNG_IRQn               = 80,      
  FPU_IRQn                    = 81       
} IRQn_Type;



 

#line 1 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"
 







 

























 







 extern "C" {
















 




 


 

 













#line 110 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"


 
#line 124 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"

#line 185 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"

#line 187 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"
#line 1 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 











 









 









 









 











 











 











 







 










 










 









 





#line 684 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cmInstr.h"

   

#line 188 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"
#line 1 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




#line 634 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cmFunc.h"

 

#line 189 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"
#line 1 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4_simd.h"
 







 

























 










 extern "C" {





 


 



 


 
#line 122 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4_simd.h"











#line 689 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4_simd.h"

 



}


#line 190 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"








 
#line 225 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"

 






 
#line 241 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"

 













 


 





 


 
typedef union
{
  struct
  {



    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                

    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       



    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                

    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile  uint32_t PFR[2];                   
  volatile  uint32_t DFR;                      
  volatile  uint32_t ADR;                      
  volatile  uint32_t MMFR[4];                  
  volatile  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile  uint32_t ICTR;                     
  volatile uint32_t ACTLR;                    
} SCnSCB_Type;

 



 















 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                      
  volatile  uint32_t IRR;                      
  volatile uint32_t IMCR;                     
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                      
  volatile  uint32_t LSR;                      
       uint32_t RESERVED5[6];
  volatile  uint32_t PID4;                     
  volatile  uint32_t PID5;                     
  volatile  uint32_t PID6;                     
  volatile  uint32_t PID7;                     
  volatile  uint32_t PID0;                     
  volatile  uint32_t PID1;                     
  volatile  uint32_t PID2;                     
  volatile  uint32_t PID3;                     
  volatile  uint32_t CID0;                     
  volatile  uint32_t CID1;                     
  volatile  uint32_t CID2;                     
  volatile  uint32_t CID3;                     
} ITM_Type;

 



 



























 



 



 



 









   






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t CYCCNT;                   
  volatile uint32_t CPICNT;                   
  volatile uint32_t EXCCNT;                   
  volatile uint32_t SLEEPCNT;                 
  volatile uint32_t LSUCNT;                   
  volatile uint32_t FOLDCNT;                  
  volatile  uint32_t PCSR;                     
  volatile uint32_t COMP0;                    
  volatile uint32_t MASK0;                    
  volatile uint32_t FUNCTION0;                
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                    
  volatile uint32_t MASK1;                    
  volatile uint32_t FUNCTION1;                
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                    
  volatile uint32_t MASK2;                    
  volatile uint32_t FUNCTION2;                
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                    
  volatile uint32_t MASK3;                    
  volatile uint32_t FUNCTION3;                
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   






 


 
typedef struct
{
  volatile uint32_t SSPSR;                    
  volatile uint32_t CSPSR;                    
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                     
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                     
       uint32_t RESERVED2[131];
  volatile  uint32_t FFSR;                     
  volatile uint32_t FFCR;                     
  volatile  uint32_t FSCR;                     
       uint32_t RESERVED3[759];
  volatile  uint32_t TRIGGER;                  
  volatile  uint32_t FIFO0;                    
  volatile  uint32_t ITATBCTR2;                
       uint32_t RESERVED4[1];
  volatile  uint32_t ITATBCTR0;                
  volatile  uint32_t FIFO1;                    
  volatile uint32_t ITCTRL;                   
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                 
  volatile uint32_t CLAIMCLR;                 
       uint32_t RESERVED7[8];
  volatile  uint32_t DEVID;                    
  volatile  uint32_t DEVTYPE;                  
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   







 


 
typedef struct
{
  volatile  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 









 









 



 









 






























 








 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;                    
  volatile uint32_t FPCAR;                    
  volatile uint32_t FPDSCR;                   
  volatile  uint32_t MVFR0;                    
  volatile  uint32_t MVFR1;                    
} FPU_Type;

 



























 



 












 
























 












 







 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 






 

 
#line 1399 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"

#line 1408 "C:\\Keil\\ARM\\CMSIS\\Include\\core_cm4.h"











 










 

 



 




 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}







 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
 
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));  
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}













 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}













 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 



 




 

extern volatile int32_t ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}








 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 






}
#line 185 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"
#line 186 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 



 

typedef struct
{
  volatile uint32_t SR;      
  volatile uint32_t CR1;     
  volatile uint32_t CR2;     
  volatile uint32_t SMPR1;   
  volatile uint32_t SMPR2;   
  volatile uint32_t JOFR1;   
  volatile uint32_t JOFR2;   
  volatile uint32_t JOFR3;   
  volatile uint32_t JOFR4;   
  volatile uint32_t HTR;     
  volatile uint32_t LTR;     
  volatile uint32_t SQR1;    
  volatile uint32_t SQR2;    
  volatile uint32_t SQR3;    
  volatile uint32_t JSQR;    
  volatile uint32_t JDR1;    
  volatile uint32_t JDR2;    
  volatile uint32_t JDR3;    
  volatile uint32_t JDR4;    
  volatile uint32_t DR;      
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CSR;     
  volatile uint32_t CCR;     
  volatile uint32_t CDR;    
 
} ADC_Common_TypeDef;




 

typedef struct
{
  volatile uint32_t TIR;   
  volatile uint32_t TDTR;  
  volatile uint32_t TDLR;  
  volatile uint32_t TDHR;  
} CAN_TxMailBox_TypeDef;



 

typedef struct
{
  volatile uint32_t RIR;   
  volatile uint32_t RDTR;  
  volatile uint32_t RDLR;  
  volatile uint32_t RDHR;  
} CAN_FIFOMailBox_TypeDef;



 

typedef struct
{
  volatile uint32_t FR1;  
  volatile uint32_t FR2;  
} CAN_FilterRegister_TypeDef;



 

typedef struct
{
  volatile uint32_t              MCR;                  
  volatile uint32_t              MSR;                  
  volatile uint32_t              TSR;                  
  volatile uint32_t              RF0R;                 
  volatile uint32_t              RF1R;                 
  volatile uint32_t              IER;                  
  volatile uint32_t              ESR;                  
  volatile uint32_t              BTR;                  
  uint32_t                   RESERVED0[88];        
  CAN_TxMailBox_TypeDef      sTxMailBox[3];        
  CAN_FIFOMailBox_TypeDef    sFIFOMailBox[2];      
  uint32_t                   RESERVED1[12];        
  volatile uint32_t              FMR;                  
  volatile uint32_t              FM1R;                 
  uint32_t                   RESERVED2;            
  volatile uint32_t              FS1R;                 
  uint32_t                   RESERVED3;            
  volatile uint32_t              FFA1R;                
  uint32_t                   RESERVED4;            
  volatile uint32_t              FA1R;                 
  uint32_t                   RESERVED5[8];         
  CAN_FilterRegister_TypeDef sFilterRegister[28];  
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;          
  volatile uint8_t  IDR;         
  uint8_t       RESERVED0;   
  uint16_t      RESERVED1;   
  volatile uint32_t CR;          
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SWTRIGR;   
  volatile uint32_t DHR12R1;   
  volatile uint32_t DHR12L1;   
  volatile uint32_t DHR8R1;    
  volatile uint32_t DHR12R2;   
  volatile uint32_t DHR12L2;   
  volatile uint32_t DHR8R2;    
  volatile uint32_t DHR12RD;   
  volatile uint32_t DHR12LD;   
  volatile uint32_t DHR8RD;    
  volatile uint32_t DOR1;      
  volatile uint32_t DOR2;      
  volatile uint32_t SR;        
} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;   
  volatile uint32_t CR;       
  volatile uint32_t APB1FZ;   
  volatile uint32_t APB2FZ;   
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SR;        
  volatile uint32_t RISR;      
  volatile uint32_t IER;       
  volatile uint32_t MISR;      
  volatile uint32_t ICR;       
  volatile uint32_t ESCR;      
  volatile uint32_t ESUR;      
  volatile uint32_t CWSTRTR;   
  volatile uint32_t CWSIZER;   
  volatile uint32_t DR;        
} DCMI_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t NDTR;    
  volatile uint32_t PAR;     
  volatile uint32_t M0AR;    
  volatile uint32_t M1AR;    
  volatile uint32_t FCR;     
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;    
  volatile uint32_t HISR;    
  volatile uint32_t LIFCR;   
  volatile uint32_t HIFCR;   
} DMA_TypeDef;




 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
  uint32_t      RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
  uint32_t      RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
  uint32_t      RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
  uint32_t      RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
  uint32_t      RESERVED4[5];
  volatile uint32_t MMCTGFCR;
  uint32_t      RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
  uint32_t      RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
  uint32_t      RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
  volatile uint32_t RESERVED8;
  volatile uint32_t PTPTSSR;
  uint32_t      RESERVED9[565];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
  volatile uint32_t DMARSWTR;
  uint32_t      RESERVED10[8];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;     
  volatile uint32_t EMR;     
  volatile uint32_t RTSR;    
  volatile uint32_t FTSR;    
  volatile uint32_t SWIER;   
  volatile uint32_t PR;      
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;       
  volatile uint32_t KEYR;      
  volatile uint32_t OPTKEYR;   
  volatile uint32_t SR;        
  volatile uint32_t CR;        
  volatile uint32_t OPTCR;     
  volatile uint32_t OPTCR1;    
} FLASH_TypeDef;




 

typedef struct
{
  volatile uint32_t BTCR[8];     
} FSMC_Bank1_TypeDef;



 

typedef struct
{
  volatile uint32_t BWTR[7];     
} FSMC_Bank1E_TypeDef;



 

typedef struct
{
  volatile uint32_t PCR2;        
  volatile uint32_t SR2;         
  volatile uint32_t PMEM2;       
  volatile uint32_t PATT2;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR2;       
  uint32_t      RESERVED1;   
  uint32_t      RESERVED2;   
  volatile uint32_t PCR3;        
  volatile uint32_t SR3;         
  volatile uint32_t PMEM3;       
  volatile uint32_t PATT3;       
  uint32_t      RESERVED3;   
  volatile uint32_t ECCR3;       
} FSMC_Bank2_3_TypeDef;



 

typedef struct
{
  volatile uint32_t PCR4;        
  volatile uint32_t SR4;         
  volatile uint32_t PMEM4;       
  volatile uint32_t PATT4;       
  volatile uint32_t PIO4;        
} FSMC_Bank4_TypeDef;




 

typedef struct
{
  volatile uint32_t MODER;     
  volatile uint32_t OTYPER;    
  volatile uint32_t OSPEEDR;   
  volatile uint32_t PUPDR;     
  volatile uint32_t IDR;       
  volatile uint32_t ODR;       
  volatile uint16_t BSRRL;     
  volatile uint16_t BSRRH;     
  volatile uint32_t LCKR;      
  volatile uint32_t AFR[2];    
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t MEMRMP;        
  volatile uint32_t PMC;           
  volatile uint32_t EXTICR[4];     
  uint32_t      RESERVED[2];   
  volatile uint32_t CMPCR;         
} SYSCFG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t OAR1;        
  volatile uint32_t OAR2;        
  volatile uint32_t DR;          
  volatile uint32_t SR1;         
  volatile uint32_t SR2;         
  volatile uint32_t CCR;         
  volatile uint32_t TRISE;       
  volatile uint32_t FLTR;        
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;    
  volatile uint32_t PR;    
  volatile uint32_t RLR;   
  volatile uint32_t SR;    
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CSR;   
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t PLLCFGR;        
  volatile uint32_t CFGR;           
  volatile uint32_t CIR;            
  volatile uint32_t AHB1RSTR;       
  volatile uint32_t AHB2RSTR;       
  volatile uint32_t AHB3RSTR;       
  uint32_t      RESERVED0;      
  volatile uint32_t APB1RSTR;       
  volatile uint32_t APB2RSTR;       
  uint32_t      RESERVED1[2];   
  volatile uint32_t AHB1ENR;        
  volatile uint32_t AHB2ENR;        
  volatile uint32_t AHB3ENR;        
  uint32_t      RESERVED2;      
  volatile uint32_t APB1ENR;        
  volatile uint32_t APB2ENR;        
  uint32_t      RESERVED3[2];   
  volatile uint32_t AHB1LPENR;      
  volatile uint32_t AHB2LPENR;      
  volatile uint32_t AHB3LPENR;      
  uint32_t      RESERVED4;      
  volatile uint32_t APB1LPENR;      
  volatile uint32_t APB2LPENR;      
  uint32_t      RESERVED5[2];   
  volatile uint32_t BDCR;           
  volatile uint32_t CSR;            
  uint32_t      RESERVED6[2];   
  volatile uint32_t SSCGR;          
  volatile uint32_t PLLI2SCFGR;     

} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t TR;       
  volatile uint32_t DR;       
  volatile uint32_t CR;       
  volatile uint32_t ISR;      
  volatile uint32_t PRER;     
  volatile uint32_t WUTR;     
  volatile uint32_t CALIBR;   
  volatile uint32_t ALRMAR;   
  volatile uint32_t ALRMBR;   
  volatile uint32_t WPR;      
  volatile uint32_t SSR;      
  volatile uint32_t SHIFTR;   
  volatile uint32_t TSTR;     
  volatile uint32_t TSDR;     
  volatile uint32_t TSSSR;    
  volatile uint32_t CALR;     
  volatile uint32_t TAFCR;    
  volatile uint32_t ALRMASSR; 
  volatile uint32_t ALRMBSSR; 
  uint32_t RESERVED7;     
  volatile uint32_t BKP0R;    
  volatile uint32_t BKP1R;    
  volatile uint32_t BKP2R;    
  volatile uint32_t BKP3R;    
  volatile uint32_t BKP4R;    
  volatile uint32_t BKP5R;    
  volatile uint32_t BKP6R;    
  volatile uint32_t BKP7R;    
  volatile uint32_t BKP8R;    
  volatile uint32_t BKP9R;    
  volatile uint32_t BKP10R;   
  volatile uint32_t BKP11R;   
  volatile uint32_t BKP12R;   
  volatile uint32_t BKP13R;   
  volatile uint32_t BKP14R;   
  volatile uint32_t BKP15R;   
  volatile uint32_t BKP16R;   
  volatile uint32_t BKP17R;   
  volatile uint32_t BKP18R;   
  volatile uint32_t BKP19R;   
} RTC_TypeDef;




 

typedef struct
{
  volatile uint32_t POWER;           
  volatile uint32_t CLKCR;           
  volatile uint32_t ARG;             
  volatile uint32_t CMD;             
  volatile uint32_t  RESPCMD;         
  volatile uint32_t  RESP1;           
  volatile uint32_t  RESP2;           
  volatile uint32_t  RESP3;           
  volatile uint32_t  RESP4;           
  volatile uint32_t DTIMER;          
  volatile uint32_t DLEN;            
  volatile uint32_t DCTRL;           
  volatile uint32_t  DCOUNT;          
  volatile uint32_t  STA;             
  volatile uint32_t ICR;             
  volatile uint32_t MASK;            
  uint32_t      RESERVED0[2];    
  volatile uint32_t  FIFOCNT;         
  uint32_t      RESERVED1[13];   
  volatile uint32_t FIFO;            
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t CRCPR;       
  volatile uint32_t RXCRCR;      
  volatile uint32_t TXCRCR;      
  volatile uint32_t I2SCFGR;     
  volatile uint32_t I2SPR;       
} SPI_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;          
  volatile uint32_t CR2;          
  volatile uint32_t SMCR;         
  volatile uint32_t DIER;         
  volatile uint32_t SR;           
  volatile uint32_t EGR;          
  volatile uint32_t CCMR1;        
  volatile uint32_t CCMR2;        
  volatile uint32_t CCER;         
  volatile uint32_t CNT;          
  volatile uint32_t PSC;          
  volatile uint32_t ARR;          
  volatile uint32_t RCR;          
  volatile uint32_t CCR1;         
  volatile uint32_t CCR2;         
  volatile uint32_t CCR3;         
  volatile uint32_t CCR4;         
  volatile uint32_t BDTR;         
  volatile uint32_t DCR;          
  volatile uint32_t DMAR;         
  volatile uint32_t OR;           
} TIM_TypeDef;



 

typedef struct
{
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t BRR;         
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t CR3;         
  volatile uint32_t GTPR;        
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;   
  volatile uint32_t SR;   
  volatile uint32_t DR;   
} RNG_TypeDef;





 
typedef struct
{
  volatile uint32_t GOTGCTL;       
  volatile uint32_t GOTGINT;       
  volatile uint32_t GAHBCFG;       
  volatile uint32_t GUSBCFG;       
  volatile uint32_t GRSTCTL;       
  volatile uint32_t GINTSTS;       
  volatile uint32_t GINTMSK;       
  volatile uint32_t GRXSTSR;       
  volatile uint32_t GRXSTSP;       
  volatile uint32_t GRXFSIZ;       
  volatile uint32_t DIEPTXF0_HNPTXFSIZ;    
  volatile uint32_t HNPTXSTS;      
  uint32_t Reserved30[2];      
  volatile uint32_t GCCFG;         
  volatile uint32_t CID;           
  uint32_t  Reserved40[48];    
  volatile uint32_t HPTXFSIZ;  
  volatile uint32_t DIEPTXF[0x0F]; 
}
USB_OTG_GlobalTypeDef;





 
typedef struct
{
  volatile uint32_t DCFG;          
  volatile uint32_t DCTL;          
  volatile uint32_t DSTS;          
  uint32_t Reserved0C;            
  volatile uint32_t DIEPMSK;    
  volatile uint32_t DOEPMSK;   
  volatile uint32_t DAINT;      
  volatile uint32_t DAINTMSK;  
  uint32_t  Reserved20;           
  uint32_t Reserved9;        
  volatile uint32_t DVBUSDIS;     
  volatile uint32_t DVBUSPULSE;   
  volatile uint32_t DTHRCTL;      
  volatile uint32_t DIEPEMPMSK;  
  volatile uint32_t DEACHINT;     
  volatile uint32_t DEACHMSK;     
  uint32_t Reserved40;       
  volatile uint32_t DINEP1MSK;   
  uint32_t  Reserved44[15];       
  volatile uint32_t DOUTEP1MSK;  
}
USB_OTG_DeviceTypeDef;




 
typedef struct
{
  volatile uint32_t DIEPCTL;  
  uint32_t Reserved04;              
  volatile uint32_t DIEPINT;  
  uint32_t Reserved0C;              
  volatile uint32_t DIEPTSIZ;  
  volatile uint32_t DIEPDMA;  
  volatile uint32_t DTXFSTS; 
  uint32_t Reserved18;              
}
USB_OTG_INEndpointTypeDef;




 
typedef struct
{
  volatile uint32_t DOEPCTL;        
  uint32_t Reserved04;          
  volatile uint32_t DOEPINT;        
  uint32_t Reserved0C;          
  volatile uint32_t DOEPTSIZ;       
  volatile uint32_t DOEPDMA;        
  uint32_t Reserved18[2];       
}
USB_OTG_OUTEndpointTypeDef;




 
typedef struct
{
  volatile uint32_t HCFG;              
  volatile uint32_t HFIR;       
  volatile uint32_t HFNUM;          
  uint32_t Reserved40C;                    
  volatile uint32_t HPTXSTS;    
  volatile uint32_t HAINT;    
  volatile uint32_t HAINTMSK;    
}
USB_OTG_HostTypeDef;




 
typedef struct
{
  volatile uint32_t HCCHAR;
  volatile uint32_t HCSPLT;
  volatile uint32_t HCINT;
  volatile uint32_t HCINTMSK;
  volatile uint32_t HCTSIZ;
  volatile uint32_t HCDMA;
  uint32_t Reserved[2];
}
USB_OTG_HostChannelTypeDef;




 
#line 950 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 





 
#line 990 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1007 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1044 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 





 


 



#line 1074 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 



 
#line 1161 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"








 



 

  

 

 
 
 

 
 
 
 
 
 
#line 1195 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1221 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1247 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1285 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1327 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 


 


 


 


 
#line 1376 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1414 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1452 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1481 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 


 


 



 
#line 1517 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1539 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 
 
 
 
 
 
 
#line 1561 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"
 
#line 1571 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1589 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"











 





 





 
#line 1632 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"


 












 
#line 1663 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"


 
 






 




 





 





 






 




 





 





 






 




 





 





 





 




 





 





 





 




 





 





 
 



 
#line 1805 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1822 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1839 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1856 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1890 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1924 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1958 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 1992 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2026 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2060 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2094 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2128 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2162 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2196 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2230 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2264 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2298 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2332 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2366 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2400 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2434 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2468 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2502 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2536 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2570 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2604 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2638 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2672 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2706 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2740 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2774 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 2808 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
 
 
 
 
 



 



 



 
 
 
 
 
 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 

 
 
 
 
 
 
#line 2943 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 






 






 






 






 
 
 
 
 
 
#line 3018 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3037 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3048 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3070 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3092 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3114 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3136 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"


 
 
 
 
 
 
#line 3164 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3186 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3208 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3230 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3252 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3274 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
 
 
 
 
 
#line 3290 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3298 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3307 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3324 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 






#line 3357 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3372 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
 
 
 
 
 











#line 3400 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 











#line 3423 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 











#line 3446 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 











#line 3469 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 3866 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3875 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3884 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3895 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3905 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3915 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3925 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3936 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3946 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3956 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3966 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 3977 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3987 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 3997 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4007 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4018 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4028 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4038 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4048 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4059 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4069 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4079 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4089 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4100 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4110 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4120 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4130 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4141 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4151 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4161 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4171 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 
 
 
 
 
 
































































 
#line 4265 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
































































 
































































 
#line 4413 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"
 
#line 4430 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4448 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"
 
#line 4465 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4499 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
 
 
 
 
 
#line 4520 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4529 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"







 



#line 4550 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 



 


 
#line 4575 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4585 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 


 



 
 
 
 
 
 


 





 


 




 
 
 
 
 
 











 
#line 4646 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"







 


 
#line 4664 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
 
 
 
 
 



#line 4683 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4693 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4702 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4711 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4722 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"















 
 








 








 






#line 4772 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 











 











 
#line 4804 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




















 
#line 4833 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4841 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4848 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 4866 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 



 
#line 4900 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4913 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
#line 4932 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 4939 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 



 
#line 4973 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 4990 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5015 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 



 
#line 5049 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5064 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 











 
#line 5088 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 





 
#line 5106 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"






 
 
 
 
 
 



 






 
 
 
 
 
 
#line 5161 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5191 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5219 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5237 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 


 



 
#line 5290 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5332 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 



 
#line 5371 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5391 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
#line 5409 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5431 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5439 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5447 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 




 
 
 
 
 
 




 












 


 






#line 5550 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5620 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5635 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5661 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 
 
 
 
 
 









#line 5693 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5702 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 5713 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 


 


 





















 




 
 
 
 
 
 





 

 


 






 
#line 5786 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5799 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5812 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5825 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 






 
#line 5843 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5856 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5869 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5882 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"


 







 
#line 5902 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5915 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5928 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5941 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 






 
#line 5958 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5970 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5982 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 5994 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 
 
 
 
 
 
















 









#line 6039 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 

























 
#line 6082 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 6096 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 6106 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




























 





















 




























 





















 
#line 6225 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 


 


 


 


 


 


 
#line 6260 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"





#line 6271 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 6279 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 6286 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
#line 6297 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"


 
 
 
 
 
 
#line 6315 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 



 
#line 6339 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 6348 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"







 
#line 6368 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 6379 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
 
 
 
 
 
#line 6396 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"



 
#line 6408 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"







 



 
 
 
 
 
 



 









 
#line 6456 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"
 


 






 
 
 
 
 
 
#line 6500 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 6516 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 
#line 6534 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
#line 6550 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 


 








 

 
#line 6577 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 






 



 


 


 
#line 6606 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
#line 6621 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
#line 6636 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
 
 

 
#line 6651 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 




 




 




 


 


 


 


 


 


 
 
 

 
#line 6704 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 6711 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 



 


 



 


 


 


 



 
 
 

 
#line 6786 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 


 


 




   
#line 6837 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 6863 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 6880 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 





 


 


 


 


 
 
 
 
 
 
#line 6915 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 






 






#line 6938 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"









 




 
#line 6959 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 





#line 6975 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 



 








 


#line 7003 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 

#line 7013 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 7032 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 






#line 7048 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7058 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


#line 7071 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 7081 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 
#line 7093 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7121 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7149 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 


 





 



 

#line 7175 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"























 

#line 7206 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"























 


 


 





 


 


#line 7256 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 7265 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



#line 7281 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 7293 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 



 
#line 7308 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 


 
#line 7326 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7337 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"
















 
#line 7365 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 










#line 7392 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


#line 7403 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"









#line 7423 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 

#line 7434 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

#line 7443 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"







 
#line 7462 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7475 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7488 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 
#line 7501 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 


 


 



 

#line 7531 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7539 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 








 






 



 



 

 




 



 


 


 


 
#line 7601 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7612 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 



 





 


 


 




 






 
#line 7661 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7675 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7685 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7693 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7701 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 
#line 7713 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7723 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7731 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7739 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7747 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7759 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7769 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 



 
#line 7781 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 




 
#line 7844 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 
#line 7856 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 





 
#line 7870 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 





 





 
#line 7890 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/stm32f407xx.h"

 


 





 



 



 


}






 
#line 126 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/STM32F4xx.h"
#line 143 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/STM32F4xx.h"



 



  
typedef enum 
{
  RESET = 0, 
  SET = !RESET
} FlagStatus, ITStatus;

typedef enum 
{
  DISABLE = 0, 
  ENABLE = !DISABLE
} FunctionalState;


typedef enum 
{
  ERROR = 0, 
  SUCCESS = !ERROR
} ErrorStatus;



 




 



















 



}





 



 
  



 
#line 24 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"









#line 39 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"


typedef uint8_t    BYTE;
typedef uint16_t   WORD;
typedef uint32_t   DWORD;
typedef uint32_t   MTYPE;


inline void* operator new[]    ( unsigned int  x ) { return malloc(x); }
inline void* operator new      ( unsigned int  x ) { return malloc(x); }
inline void  operator delete[] ( void         *x ) { if(x) free(x);    }
inline void  operator delete   ( void         *x ) { if(x) free(x);    }







#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/PinConfig.h"







 

















 
class cHwPinConfig
{
  public:
    
    
 
    typedef enum
    {
      
      INPUT          = 0x0000, 
      OUTPUT         = 0x0001, 
      ALTERNATE_FUNC = 0x0002, 
      ANALOG         = 0x0003, 
      
      
      PUSH_PULL      = 0x0000, 
      OPEN_DRAIN     = 0x0010, 
      
      
      NO_PUPD        = 0x0000, 
      PULL_UP        = 0x0100, 
      PULL_DOWN      = 0x0200, 

      
      LOW_SPEED      = 0x0000, 
      MEDIUM_SPEED   = 0x1000, 
      FAST_SPEED     = 0x2000, 
      HIGH_SPEED     = 0x3000  
      
    } MODE;

    
    
 
    typedef enum
    {
      ADC12_IN4,
      ADC12_IN5,
      ADC12_IN6,
      ADC12_IN7,
      ADC12_IN8,
      ADC12_IN9,
      ADC12_IN14,
      ADC12_IN15,
      ADC123_IN0,
      ADC123_IN1,
      ADC123_IN2,
      ADC123_IN3,
      ADC123_IN10,
      ADC123_IN11,
      ADC123_IN12,
      ADC123_IN13,
      ADC3_IN4  = ADC12_IN4,
      ADC3_IN5  = ADC12_IN5,
      ADC3_IN6  = ADC12_IN6,
      ADC3_IN7  = ADC12_IN7,
      ADC3_IN8  = ADC12_IN8,
      ADC3_IN9  = ADC12_IN9,
      ADC3_IN14 = ADC12_IN14,
      ADC3_IN15 = ADC12_IN15,
      CAN1_RX,
      CAN1_TX,
      CAN2_RX,
      CAN2_TX,
      DAC1_OUT,
      DAC2_OUT,
      ETH_MDC,
      ETH_MDIO,
      ETH_MII_COL,
      ETH_MII_CRS,
      ETH_MII_RX_CLK,
      ETH_MII_RX_DV,
      ETH_MII_RX_ER,
      ETH_MII_RXD0,
      ETH_MII_RXD1,
      ETH_MII_RXD2,
      ETH_MII_RXD3,
      ETH_MII_TX_CLK,
      ETH_MII_TX_EN,
      ETH_MII_TXD0,
      ETH_MII_TXD1,
      ETH_MII_TXD2,
      ETH_MII_TXD3,
      ETH_PPS_OUT,
      ETH_RMII_CRS_DV,
      ETH_RMII_RXD0,
      ETH_RMII_TX_EN,
      ETH_RMII_TXD0,
      ETH_RMII_TXD1,
      I2C1_SCL,
      I2C1_SDA,
      I2C1_SMBA,
      I2C2_SCL,
      I2C2_SDA,
      I2C2_SMBA,
      I2C3_SCL,
      I2C3_SDA,
      I2C3_SMBA,
      I2S_CKIN,
      I2S2_CK,
      I2S2_MCK,
      I2S2_SD,
      I2S2_WS,
      I2S2ext_SD,
      I2S3_CK,
      I2S3_MCK,
      I2S3_SD,
      I2S3_WS,
      I2S3ext_SD,
      I2S3S_CK,
      I2S3S_WS,
      OTG_FS_DM,
      OTG_FS_DP,
      OTG_FS_ID,
      OTG_FS_SOF,
      OTG_HS_DM,
      OTG_HS_DP,
      OTG_HS_ID,
      OTG_HS_SOF,
      OTG_HS_ULPI_CK,
      OTG_HS_ULPI_D0,
      OTG_HS_ULPI_D1,
      OTG_HS_ULPI_D2,
      OTG_HS_ULPI_D3,
      OTG_HS_ULPI_D4,
      OTG_HS_ULPI_D5,
      OTG_HS_ULPI_D6,
      OTG_HS_ULPI_D7,
      OTG_HS_ULPI_DIR,
      OTG_HS_ULPI_NXT,
      OTG_HS_ULPI_STP,
      SDIO_CK,
      SDIO_CMD,
      SDIO_D0,
      SDIO_D1,
      SDIO_D2,
      SDIO_D3,
      SDIO_D4,
      SDIO_D5,
      SDIO_D6,
      SDIO_D7,
      SPI1_MISO,
      SPI1_MOSI,
      SPI1_NSS,
      SPI1_SCK,
      SPI2_MISO,
      SPI2_MOSI,
      SPI2_NSS,
      SPI2_SCK,
      SPI3_MISO,
      SPI3_MOSI,
      SPI3_NSS,
      SPI3_SCK,
      TIM1_BKIN,
      TIM1_CH1,
      TIM1_CH1N = TIM1_CH1,
      TIM1_CH2,
      TIM1_CH2N = TIM1_CH2,
      TIM1_CH3,
      TIM1_CH3N = TIM1_CH3,
      TIM1_CH4,
      TIM1_ETR,
      TIM10_CH1,
      TIM11_CH1,
      TIM12_CH1,
      TIM12_CH2,
      TIM13_CH1,
      TIM14_CH1,
      TIM2_CH1,
      TIM2_CH2,
      TIM2_CH3,
      TIM2_CH4,
      TIM2_ETR,
      TIM3_CH1,
      TIM3_CH2,
      TIM3_CH3,
      TIM3_CH4,
      TIM3_ETR,
      TIM4_CH1,
      TIM4_CH2,
      TIM4_CH3,
      TIM4_CH4,
      TIM4_ETR,
      TIM5_CH1,
      TIM5_CH2,
      TIM5_CH3,
      TIM5_CH4,
      TIM8_BKIN,
      TIM8_CH1,
      TIM8_CH1N = TIM8_CH1,
      TIM8_CH2,
      TIM8_CH2N = TIM8_CH2,
      TIM8_CH3,
      TIM8_CH3N = TIM8_CH3,
      TIM8_CH4,
      TIM8_ETR,
      TIM9_CH1,
      TIM9_CH2,
      UART4_RX,
      UART4_TX,
      UART5_RX,
      UART5_TX,
      UART6_CTS,
      USART1_CK,
      USART1_CTS,
      USART1_RTS,
      USART1_RX,
      USART1_TX,
      USART2_CK,
      USART2_CTS,
      USART2_RTS,
      USART2_RX,
      USART2_TX,
      USART3_CK,
      USART3_CTS,
      USART3_RTS,
      USART3_RX,
      USART3_TX,
      USART6_CK,
      USART6_CTS,
      USART6_RTS,
      USART6_RX,
      USART6_TX,
    } Function;

    
    



 
    typedef enum
    {
      
      ADC12_IN4_PA_4       = (ADC12_IN4      <<16)|(0<<12)|( 4<<4)|( 0<<0),  
      ADC12_IN5_PA_5       = (ADC12_IN5      <<16)|(0<<12)|( 5<<4)|( 0<<0),  
      ADC12_IN6_PA_6       = (ADC12_IN6      <<16)|(0<<12)|( 6<<4)|( 0<<0),  
      ADC12_IN7_PA_7       = (ADC12_IN7      <<16)|(0<<12)|( 7<<4)|( 0<<0),  
      ADC12_IN8_PB_0       = (ADC12_IN8      <<16)|(1<<12)|( 0<<4)|( 0<<0),  
      ADC12_IN9_PB_1       = (ADC12_IN9      <<16)|(1<<12)|( 1<<4)|( 0<<0),  
      ADC12_IN14_PC_4      = (ADC12_IN14     <<16)|(2<<12)|( 4<<4)|( 0<<0),  
      ADC12_IN15_PC_5      = (ADC12_IN15     <<16)|(2<<12)|( 5<<4)|( 0<<0),  
      ADC123_IN0_PA_0      = (ADC123_IN0     <<16)|(0<<12)|( 0<<4)|( 0<<0),  
      ADC123_IN1_PA_1      = (ADC123_IN1     <<16)|(0<<12)|( 1<<4)|( 0<<0),  
      ADC123_IN2_PA_2      = (ADC123_IN2     <<16)|(0<<12)|( 2<<4)|( 0<<0),  
      ADC123_IN3_PA_3      = (ADC123_IN3     <<16)|(0<<12)|( 3<<4)|( 0<<0),  
      ADC123_IN10_PC_0     = (ADC123_IN10    <<16)|(2<<12)|( 0<<4)|( 0<<0),  
      ADC123_IN11_PC_1     = (ADC123_IN11    <<16)|(2<<12)|( 1<<4)|( 0<<0),  
      ADC123_IN12_PC_2     = (ADC123_IN12    <<16)|(2<<12)|( 2<<4)|( 0<<0),  
      ADC123_IN13_PC_3     = (ADC123_IN13    <<16)|(2<<12)|( 3<<4)|( 0<<0),  
      ADC3_IN4_PF_6        = (ADC3_IN4       <<16)|(5<<12)|( 6<<4)|( 0<<0),  
      ADC3_IN5_PF_7        = (ADC3_IN5       <<16)|(5<<12)|( 7<<4)|( 0<<0),  
      ADC3_IN6_PF_8        = (ADC3_IN6       <<16)|(5<<12)|( 8<<4)|( 0<<0),  
      ADC3_IN7_PF_9        = (ADC3_IN7       <<16)|(5<<12)|( 9<<4)|( 0<<0),  
      ADC3_IN8_PE_10       = (ADC3_IN8       <<16)|(4<<12)|(10<<4)|( 0<<0),  
      ADC3_IN9_PF_3        = (ADC3_IN9       <<16)|(5<<12)|( 3<<4)|( 0<<0),  
      ADC3_IN14_PF_4       = (ADC3_IN14      <<16)|(5<<12)|( 4<<4)|( 0<<0),  
      ADC3_IN15_PF_5       = (ADC3_IN15      <<16)|(5<<12)|( 5<<4)|( 0<<0),  
      CAN1_RX_PA_11        = (CAN1_RX        <<16)|(0<<12)|(11<<4)|( 9<<0),  
      CAN1_RX_PB_8         = (CAN1_RX        <<16)|(1<<12)|( 8<<4)|( 9<<0),  
      CAN1_RX_PD_0         = (CAN1_RX        <<16)|(3<<12)|( 0<<4)|( 9<<0),  
      CAN1_RX_PI_9         = (CAN1_RX        <<16)|(8<<12)|( 9<<4)|( 9<<0),  
      CAN1_TX_PA_12        = (CAN1_TX        <<16)|(0<<12)|(12<<4)|( 9<<0),  
      CAN1_TX_PB_9         = (CAN1_TX        <<16)|(1<<12)|( 9<<4)|( 9<<0),  
      CAN1_TX_PD_1         = (CAN1_TX        <<16)|(3<<12)|( 1<<4)|( 9<<0),  
      CAN1_TX_PH_13        = (CAN1_TX        <<16)|(7<<12)|(13<<4)|( 9<<0),  
      CAN2_RX_PB_5         = (CAN2_RX        <<16)|(1<<12)|( 5<<4)|( 9<<0),  
      CAN2_RX_PB_12        = (CAN2_RX        <<16)|(1<<12)|(12<<4)|( 9<<0),  
      CAN2_TX_PB_6         = (CAN2_TX        <<16)|(1<<12)|( 6<<4)|( 9<<0),  
      CAN2_TX_PB_13        = (CAN2_TX        <<16)|(1<<12)|(13<<4)|( 9<<0),  
      DAC1_OUT_PA_4        = (DAC1_OUT       <<16)|(0<<12)|( 4<<4)|( 0<<0),  
      DAC2_OUT_PA_5        = (DAC2_OUT       <<16)|(0<<12)|( 5<<4)|( 0<<0),  
      ETH_MDC_PC_1         = (ETH_MDC        <<16)|(2<<12)|( 1<<4)|(11<<0),  
      ETH_MDIO_PA_2        = (ETH_MDIO       <<16)|(0<<12)|( 2<<4)|(11<<0),  
      ETH_MII_COL_PA_3     = (ETH_MII_COL    <<16)|(0<<12)|( 3<<4)|(11<<0),  
      ETH_MII_COL_PH_3     = (ETH_MII_COL    <<16)|(7<<12)|( 3<<4)|(11<<0),  
      ETH_MII_CRS_PA_0     = (ETH_MII_CRS    <<16)|(0<<12)|( 0<<4)|(11<<0),  
      ETH_MII_CRS_PH_2     = (ETH_MII_CRS    <<16)|(7<<12)|( 2<<4)|(11<<0),  
      ETH_MII_RX_CLK_PA_1  = (ETH_MII_RX_CLK <<16)|(0<<12)|( 1<<4)|(11<<0),  
      ETH_MII_RX_DV_PA_7   = (ETH_MII_RX_DV  <<16)|(0<<12)|( 7<<4)|(11<<0),  
      ETH_MII_RX_ER_PB_10  = (ETH_MII_RX_ER  <<16)|(1<<12)|(10<<4)|(11<<0),  
      ETH_MII_RX_ER_PI_10  = (ETH_MII_RX_ER  <<16)|(8<<12)|(10<<4)|(11<<0),  
      ETH_MII_RXD0_PC_4    = (ETH_MII_RXD0   <<16)|(2<<12)|( 4<<4)|(11<<0),  
      ETH_MII_RXD1_PC_5    = (ETH_MII_RXD1   <<16)|(2<<12)|( 5<<4)|(11<<0),  
      ETH_MII_RXD2_PB_0    = (ETH_MII_RXD2   <<16)|(1<<12)|( 0<<4)|(11<<0),  
      ETH_MII_RXD2_PH_6    = (ETH_MII_RXD2   <<16)|(7<<12)|( 6<<4)|(11<<0),  
      ETH_MII_RXD3_PB_1    = (ETH_MII_RXD3   <<16)|(1<<12)|( 1<<4)|(11<<0),  
      ETH_MII_RXD3_PH_7    = (ETH_MII_RXD3   <<16)|(7<<12)|( 7<<4)|(11<<0),  
      ETH_MII_TX_CLK_PC_3  = (ETH_MII_TX_CLK <<16)|(2<<12)|( 3<<4)|(11<<0),  
      ETH_MII_TX_EN_PB_11  = (ETH_MII_TX_EN  <<16)|(1<<12)|(11<<4)|(11<<0),  
      ETH_MII_TX_EN_PG_11  = (ETH_MII_TX_EN  <<16)|(6<<12)|(11<<4)|(11<<0),  
      ETH_MII_TXD0_PB_12   = (ETH_MII_TXD0   <<16)|(1<<12)|(12<<4)|(11<<0),  
      ETH_MII_TXD0_PG_13   = (ETH_MII_TXD0   <<16)|(6<<12)|(13<<4)|(11<<0),  
      ETH_MII_TXD1_PB_13   = (ETH_MII_TXD1   <<16)|(1<<12)|(13<<4)|(11<<0),  
      ETH_MII_TXD1_PG_14   = (ETH_MII_TXD1   <<16)|(6<<12)|(14<<4)|(11<<0),  
      ETH_MII_TXD2_PC_2    = (ETH_MII_TXD2   <<16)|(2<<12)|( 2<<4)|(11<<0),  
      ETH_MII_TXD3_PB_8    = (ETH_MII_TXD3   <<16)|(1<<12)|( 8<<4)|(11<<0),  
      ETH_MII_TXD3_PE_2    = (ETH_MII_TXD3   <<16)|(4<<12)|( 2<<4)|(11<<0),  
      ETH_PPS_OUT_PB_5     = (ETH_PPS_OUT    <<16)|(1<<12)|( 5<<4)|(11<<0),  
      ETH_PPS_OUT_PG_8     = (ETH_PPS_OUT    <<16)|(6<<12)|( 8<<4)|(11<<0),  
      ETH_RMII_CRS_DV_PA_7 = (ETH_RMII_CRS_DV<<16)|(0<<12)|( 7<<4)|(11<<0),  
      ETH_RMII_RXD0_PC_4   = (ETH_RMII_RXD0  <<16)|(2<<12)|( 4<<4)|(11<<0),  
      ETH_RMII_TX_EN_PB_11 = (ETH_RMII_TX_EN <<16)|(1<<12)|(11<<4)|(11<<0),  
      ETH_RMII_TX_EN_PG_11 = (ETH_RMII_TX_EN <<16)|(6<<12)|(11<<4)|(11<<0),  
      ETH_RMII_TXD0_PB_12  = (ETH_RMII_TXD0  <<16)|(1<<12)|(12<<4)|(11<<0),  
      ETH_RMII_TXD0_PG_13  = (ETH_RMII_TXD0  <<16)|(6<<12)|(13<<4)|(11<<0),  
      ETH_RMII_TXD1_PB_13  = (ETH_RMII_TXD1  <<16)|(1<<12)|(13<<4)|(11<<0),  
      ETH_RMII_TXD1_PG_14  = (ETH_RMII_TXD1  <<16)|(6<<12)|(14<<4)|(11<<0),  
      I2C1_SCL_PB_6        = (I2C1_SCL       <<16)|(1<<12)|( 6<<4)|( 4<<0),  
      I2C1_SCL_PB_8        = (I2C1_SCL       <<16)|(1<<12)|( 8<<4)|( 4<<0),  
      I2C1_SDA_PB_7        = (I2C1_SDA       <<16)|(1<<12)|( 7<<4)|( 4<<0),  
      I2C1_SDA_PB_9        = (I2C1_SDA       <<16)|(1<<12)|( 9<<4)|( 4<<0),  
      I2C1_SMBA_PB_5       = (I2C1_SMBA      <<16)|(1<<12)|( 5<<4)|( 4<<0),  
      I2C2_SCL_PB_10       = (I2C2_SCL       <<16)|(1<<12)|(10<<4)|( 4<<0),  
      I2C2_SCL_PF_1        = (I2C2_SCL       <<16)|(5<<12)|( 1<<4)|( 4<<0),  
      I2C2_SCL_PH_4        = (I2C2_SCL       <<16)|(7<<12)|( 4<<4)|( 4<<0),  
      I2C2_SDA_PB_11       = (I2C2_SDA       <<16)|(1<<12)|(11<<4)|( 4<<0),  
      I2C2_SDA_PF_0        = (I2C2_SDA       <<16)|(5<<12)|( 0<<4)|( 4<<0),  
      I2C2_SDA_PH_5        = (I2C2_SDA       <<16)|(7<<12)|( 5<<4)|( 4<<0),  
      I2C2_SMBA_PB_12      = (I2C2_SMBA      <<16)|(1<<12)|(12<<4)|( 4<<0),  
      I2C2_SMBA_PF_2       = (I2C2_SMBA      <<16)|(5<<12)|( 2<<4)|( 4<<0),  
      I2C2_SMBA_PH_6       = (I2C2_SMBA      <<16)|(7<<12)|( 6<<4)|( 4<<0),  
      I2C3_SCL_PA_8        = (I2C3_SCL       <<16)|(0<<12)|( 8<<4)|( 4<<0),  
      I2C3_SCL_PH_7        = (I2C3_SCL       <<16)|(7<<12)|( 7<<4)|( 4<<0),  
      I2C3_SDA_PC_9        = (I2C3_SDA       <<16)|(2<<12)|( 9<<4)|( 4<<0),  
      I2C3_SDA_PH_8        = (I2C3_SDA       <<16)|(7<<12)|( 8<<4)|( 4<<0),  
      I2C3_SMBA_PA_9       = (I2C3_SMBA      <<16)|(0<<12)|( 9<<4)|( 4<<0),  
      I2C3_SMBA_PH_9       = (I2C3_SMBA      <<16)|(7<<12)|( 9<<4)|( 4<<0),  
      I2S_CKIN_PC_9        = (I2S_CKIN       <<16)|(2<<12)|( 9<<4)|( 5<<0),  
      I2S2_CK_PB_10        = (I2S2_CK        <<16)|(1<<12)|(10<<4)|( 5<<0),  
      I2S2_CK_PB_13        = (I2S2_CK        <<16)|(1<<12)|(13<<4)|( 5<<0),  
      I2S2_CK_PI_1         = (I2S2_CK        <<16)|(8<<12)|( 1<<4)|( 5<<0),  
      I2S2_MCK_PC_6        = (I2S2_MCK       <<16)|(2<<12)|( 6<<4)|( 5<<0),  
      I2S2_SD_PB_15        = (I2S2_SD        <<16)|(1<<12)|(15<<4)|( 5<<0),  
      I2S2_SD_PC_3         = (I2S2_SD        <<16)|(2<<12)|( 3<<4)|( 5<<0),  
      I2S2_SD_PI_3         = (I2S2_SD        <<16)|(8<<12)|( 3<<4)|( 5<<0),  
      I2S2_WS_PB_9         = (I2S2_WS        <<16)|(1<<12)|( 9<<4)|( 5<<0),  
      I2S2_WS_PB_12        = (I2S2_WS        <<16)|(1<<12)|(12<<4)|( 5<<0),  
      I2S2_WS_PI_0         = (I2S2_WS        <<16)|(8<<12)|( 0<<4)|( 5<<0),  
      I2S2ext_SD_PB_14     = (I2S2ext_SD     <<16)|(1<<12)|(14<<4)|( 6<<0),  
      I2S2ext_SD_PC_2      = (I2S2ext_SD     <<16)|(2<<12)|( 2<<4)|( 6<<0),  
      I2S2ext_SD_PI_2      = (I2S2ext_SD     <<16)|(8<<12)|( 2<<4)|( 6<<0),  
      I2S3_CK_PB_3         = (I2S3_CK        <<16)|(1<<12)|( 3<<4)|( 6<<0),  
      I2S3_MCK_PC_7        = (I2S3_MCK       <<16)|(2<<12)|( 7<<4)|( 6<<0),  
      I2S3_SD_PB_5         = (I2S3_SD        <<16)|(1<<12)|( 5<<4)|( 6<<0),  
      I2S3_SD_PC_12        = (I2S3_SD        <<16)|(2<<12)|(12<<4)|( 6<<0),  
      I2S3_WS_PA_4         = (I2S3_WS        <<16)|(0<<12)|( 4<<4)|( 6<<0),  
      I2S3ext_SD_PB_4      = (I2S3ext_SD     <<16)|(1<<12)|( 4<<4)|( 7<<0),  
      I2S3ext_SD_PC_11     = (I2S3ext_SD     <<16)|(2<<12)|(11<<4)|( 5<<0),  
      I2S3S_CK_PC_10       = (I2S3S_CK       <<16)|(2<<12)|(10<<4)|( 6<<0),  
      I2S3S_WS_PA_15       = (I2S3S_WS       <<16)|(0<<12)|(15<<4)|( 6<<0),  
      OTG_FS_DM_PA_11      = (OTG_FS_DM      <<16)|(0<<12)|(11<<4)|(10<<0),  
      OTG_FS_DP_PA_12      = (OTG_FS_DP      <<16)|(0<<12)|(12<<4)|(10<<0),  
      OTG_FS_ID_PA_10      = (OTG_FS_ID      <<16)|(0<<12)|(10<<4)|(10<<0),  
      OTG_FS_SOF_PA_8      = (OTG_FS_SOF     <<16)|(0<<12)|(8<<4)|(10<<0),  
      OTG_HS_DM_PB_14      = (OTG_HS_DM      <<16)|(1<<12)|(14<<4)|(12<<0),  
      OTG_HS_DP_PB_15      = (OTG_HS_DP      <<16)|(1<<12)|(15<<4)|(12<<0),  
      OTG_HS_ID_PB_12      = (OTG_HS_ID      <<16)|(1<<12)|(12<<4)|(12<<0),  
      OTG_HS_SOF_PA_4      = (OTG_HS_SOF     <<16)|(0<<12)|(4<<4)|(12<<0),  
      OTG_HS_ULPI_CK_PA_5  = (OTG_HS_ULPI_CK <<16)|(0<<12)|(5<<4)|(10<<0),  
      OTG_HS_ULPI_D0_PA_3  = (OTG_HS_ULPI_D0 <<16)|(0<<12)|(3<<4)|(10<<0),  
      OTG_HS_ULPI_D1_PB_0  = (OTG_HS_ULPI_D1 <<16)|(1<<12)|(0<<4)|(10<<0),  
      OTG_HS_ULPI_D2_PB_1  = (OTG_HS_ULPI_D2 <<16)|(1<<12)|(1<<4)|(10<<0),  
      OTG_HS_ULPI_D3_PB_10 = (OTG_HS_ULPI_D3 <<16)|(1<<12)|(10<<4)|(10<<0),  
      OTG_HS_ULPI_D4_PB_11 = (OTG_HS_ULPI_D4 <<16)|(1<<12)|(11<<4)|(10<<0),  
      OTG_HS_ULPI_D5_PB_12 = (OTG_HS_ULPI_D5 <<16)|(1<<12)|(12<<4)|(10<<0),  
      OTG_HS_ULPI_D6_PB_13 = (OTG_HS_ULPI_D6 <<16)|(1<<12)|(13<<4)|(10<<0),  
      OTG_HS_ULPI_D7_PB_5  = (OTG_HS_ULPI_D7 <<16)|(1<<12)|(5<<4)|(10<<0),  
      OTG_HS_ULPI_DIR_PC_2 = (OTG_HS_ULPI_DIR<<16)|(2<<12)|(2<<4)|(10<<0),  
      OTG_HS_ULPI_DIR_PI_11= (OTG_HS_ULPI_DIR<<16)|(8<<12)|(11<<4)|(10<<0),  
      OTG_HS_ULPI_NXT_PC_3 = (OTG_HS_ULPI_NXT<<16)|(2<<12)|(3<<4)|(10<<0),  
      OTG_HS_ULPI_NXT_PH_4 = (OTG_HS_ULPI_NXT<<16)|(7<<12)|(4<<4)|(10<<0),  
      OTG_HS_ULPI_STP_PC_0 = (OTG_HS_ULPI_STP<<16)|(2<<12)|(0<<4)|(10<<0),  
      SDIO_CK_PC_12        = (SDIO_CK        <<16)|(2<<12)|(12<<4)|(12<<0),  
      SDIO_CMD_PD_2        = (SDIO_CMD       <<16)|(3<<12)|( 2<<4)|(12<<0),  
      SDIO_D0_PC_8         = (SDIO_D0        <<16)|(2<<12)|( 8<<4)|(12<<0),  
      SDIO_D1_PC_9         = (SDIO_D1        <<16)|(2<<12)|( 9<<4)|(12<<0),  
      SDIO_D2_PC_10        = (SDIO_D2        <<16)|(2<<12)|(10<<4)|(12<<0),  
      SDIO_D3_PC_11        = (SDIO_D3        <<16)|(2<<12)|(11<<4)|(12<<0),  
      SDIO_D4_PB_8         = (SDIO_D4        <<16)|(1<<12)|( 8<<4)|(12<<0),  
      SDIO_D5_PB_9         = (SDIO_D5        <<16)|(1<<12)|( 9<<4)|(12<<0),  
      SDIO_D6_PC_6         = (SDIO_D6        <<16)|(2<<12)|( 6<<4)|(12<<0),  
      SDIO_D7_PC_7         = (SDIO_D7        <<16)|(2<<12)|( 7<<4)|(12<<0),  
      SPI1_MISO_PA_6       = (SPI1_MISO      <<16)|(0<<12)|( 6<<4)|( 5<<0),  
      SPI1_MISO_PB_4       = (SPI1_MISO      <<16)|(1<<12)|( 4<<4)|( 5<<0),  
      SPI1_MOSI_PA_7       = (SPI1_MOSI      <<16)|(0<<12)|( 7<<4)|( 5<<0),  
      SPI1_MOSI_PB_5       = (SPI1_MOSI      <<16)|(1<<12)|( 5<<4)|( 5<<0),  
      SPI1_NSS_PA_4        = (SPI1_NSS       <<16)|(0<<12)|( 4<<4)|( 5<<0),  
      SPI1_NSS_PA_15       = (SPI1_NSS       <<16)|(0<<12)|(15<<4)|( 5<<0),  
      SPI1_SCK_PA_5        = (SPI1_SCK       <<16)|(0<<12)|( 5<<4)|( 5<<0),  
      SPI1_SCK_PB_3        = (SPI1_SCK       <<16)|(1<<12)|( 3<<4)|( 5<<0),  
      SPI2_MISO_PB_14      = (SPI2_MISO      <<16)|(1<<12)|(14<<4)|( 5<<0),  
      SPI2_MISO_PC_2       = (SPI2_MISO      <<16)|(2<<12)|( 2<<4)|( 5<<0),  
      SPI2_MISO_PI_2       = (SPI2_MISO      <<16)|(8<<12)|( 2<<4)|( 5<<0),  
      SPI2_MOSI_PB_15      = (SPI2_MOSI      <<16)|(1<<12)|(15<<4)|( 5<<0),  
      SPI2_MOSI_PC_3       = (SPI2_MOSI      <<16)|(2<<12)|( 3<<4)|( 5<<0),  
      SPI2_MOSI_PI_3       = (SPI2_MOSI      <<16)|(8<<12)|( 3<<4)|( 5<<0),  
      SPI2_NSS_PB_9        = (SPI2_NSS       <<16)|(1<<12)|( 9<<4)|( 5<<0),  
      SPI2_NSS_PB_12       = (SPI2_NSS       <<16)|(1<<12)|(12<<4)|( 5<<0),  
      SPI2_NSS_PI_0        = (SPI2_NSS       <<16)|(8<<12)|( 0<<4)|( 5<<0),  
      SPI2_SCK_PB_10       = (SPI2_SCK       <<16)|(1<<12)|(10<<4)|( 5<<0),  
      SPI2_SCK_PB_13       = (SPI2_SCK       <<16)|(1<<12)|(13<<4)|( 5<<0),  
      SPI2_SCK_PI_1        = (SPI2_SCK       <<16)|(8<<12)|( 1<<4)|( 5<<0),  
      SPI3_MISO_PB_4       = (SPI3_MISO      <<16)|(1<<12)|( 4<<4)|( 6<<0),  
      SPI3_MISO_PC_11      = (SPI3_MISO      <<16)|(2<<12)|(11<<4)|( 6<<0),  
      SPI3_MOSI_PB_5       = (SPI3_MOSI      <<16)|(1<<12)|( 5<<4)|( 6<<0),  
      SPI3_MOSI_PC_12      = (SPI3_MOSI      <<16)|(2<<12)|(12<<4)|( 6<<0),  
      SPI3_NSS_PA_4        = (SPI3_NSS       <<16)|(0<<12)|( 4<<4)|( 6<<0),  
      SPI3_NSS_PA_15       = (SPI3_NSS       <<16)|(0<<12)|(15<<4)|( 6<<0),  
      SPI3_SCK_PB_3        = (SPI3_SCK       <<16)|(1<<12)|( 3<<4)|( 6<<0),  
      SPI3_SCK_PC_10       = (SPI3_SCK       <<16)|(2<<12)|(10<<4)|( 6<<0),  
      TIM1_BKIN_PA_6       = (TIM1_BKIN      <<16)|(0<<12)|( 6<<4)|( 1<<0),  
      TIM1_BKIN_PB_12      = (TIM1_BKIN      <<16)|(1<<12)|(12<<4)|( 1<<0),  
      TIM1_BKIN_PE_15      = (TIM1_BKIN      <<16)|(4<<12)|(15<<4)|( 1<<0),  
      TIM1_CH1_PA_8        = (TIM1_CH1       <<16)|(0<<12)|( 8<<4)|( 1<<0),  
      TIM1_CH1_PE_9        = (TIM1_CH1       <<16)|(4<<12)|( 9<<4)|( 1<<0),  
      TIM1_CH1N_PA_7       = (TIM1_CH1N      <<16)|(0<<12)|( 7<<4)|( 1<<0),  
      TIM1_CH1N_PB_13      = (TIM1_CH1N      <<16)|(1<<12)|(13<<4)|( 1<<0),  
      TIM1_CH1N_PE_8       = (TIM1_CH1N      <<16)|(4<<12)|( 8<<4)|( 1<<0),  
      TIM1_CH2_PA_9        = (TIM1_CH2       <<16)|(0<<12)|( 9<<4)|( 1<<0),  
      TIM1_CH2_PE_11       = (TIM1_CH2       <<16)|(4<<12)|(11<<4)|( 1<<0),  
      TIM1_CH2N_PB_0       = (TIM1_CH2N      <<16)|(1<<12)|( 0<<4)|( 1<<0),  
      TIM1_CH2N_PB_14      = (TIM1_CH2N      <<16)|(1<<12)|(14<<4)|( 1<<0),  
      TIM1_CH2N_PE_10      = (TIM1_CH2N      <<16)|(4<<12)|(10<<4)|( 1<<0),  
      TIM1_CH3_PA_10       = (TIM1_CH3       <<16)|(0<<12)|(10<<4)|( 1<<0),  
      TIM1_CH3_PE_13       = (TIM1_CH3       <<16)|(4<<12)|(13<<4)|( 1<<0),  
      TIM1_CH3N_PB_1       = (TIM1_CH3N      <<16)|(1<<12)|( 1<<4)|( 1<<0),  
      TIM1_CH3N_PB_15      = (TIM1_CH3N      <<16)|(1<<12)|(15<<4)|( 1<<0),  
      TIM1_CH3N_PE_12      = (TIM1_CH3N      <<16)|(4<<12)|(12<<4)|( 1<<0),  
      TIM1_CH4_PA_11       = (TIM1_CH4       <<16)|(0<<12)|(11<<4)|( 1<<0),  
      TIM1_CH4_PE_14       = (TIM1_CH4       <<16)|(4<<12)|(14<<4)|( 1<<0),  
      TIM1_ETR_PA_12       = (TIM1_ETR       <<16)|(0<<12)|(12<<4)|( 1<<0),  
      TIM1_ETR_PE_7        = (TIM1_ETR       <<16)|(4<<12)|( 7<<4)|( 1<<0),  
      TIM10_CH1_PB_8       = (TIM10_CH1      <<16)|(1<<12)|( 8<<4)|( 3<<0),  
      TIM10_CH1_PF_6       = (TIM10_CH1      <<16)|(5<<12)|( 6<<4)|( 3<<0),  
      TIM11_CH1_PB_9       = (TIM11_CH1      <<16)|(1<<12)|( 9<<4)|( 3<<0),  
      TIM11_CH1_PF_7       = (TIM11_CH1      <<16)|(5<<12)|( 7<<4)|( 3<<0),  
      TIM12_CH1_PB_14      = (TIM12_CH1      <<16)|(1<<12)|(14<<4)|( 9<<0),  
      TIM12_CH1_PH_6       = (TIM12_CH1      <<16)|(7<<12)|( 6<<4)|( 9<<0),  
      TIM12_CH2_PB_15      = (TIM12_CH2      <<16)|(1<<12)|(15<<4)|( 9<<0),  
      TIM12_CH2_PH_9       = (TIM12_CH2      <<16)|(7<<12)|( 9<<4)|( 9<<0),  
      TIM13_CH1_PA_6       = (TIM13_CH1      <<16)|(0<<12)|( 6<<4)|( 9<<0),  
      TIM13_CH1_PF_8       = (TIM13_CH1      <<16)|(5<<12)|( 8<<4)|( 9<<0),  
      TIM14_CH1_PA_7       = (TIM14_CH1      <<16)|(0<<12)|( 7<<4)|( 9<<0),  
      TIM14_CH1_PF_9       = (TIM14_CH1      <<16)|(5<<12)|( 9<<4)|( 9<<0),  
      TIM2_CH1_PA_0        = (TIM2_CH1       <<16)|(0<<12)|( 0<<4)|( 1<<0),  
      TIM2_CH1_PA_5        = (TIM2_CH1       <<16)|(0<<12)|( 5<<4)|( 1<<0),  
      TIM2_CH1_PA_15       = (TIM2_CH1       <<16)|(0<<12)|(15<<4)|( 1<<0),  
      TIM2_CH2_PA_1        = (TIM2_CH2       <<16)|(0<<12)|( 1<<4)|( 1<<0),  
      TIM2_CH2_PB_3        = (TIM2_CH2       <<16)|(1<<12)|( 3<<4)|( 1<<0),  
      TIM2_CH3_PA_2        = (TIM2_CH3       <<16)|(0<<12)|( 2<<4)|( 1<<0),  
      TIM2_CH3_PB_10       = (TIM2_CH3       <<16)|(1<<12)|(10<<4)|( 1<<0),  
      TIM2_CH4_PA_3        = (TIM2_CH4       <<16)|(0<<12)|( 3<<4)|( 1<<0),  
      TIM2_CH4_PB_11       = (TIM2_CH4       <<16)|(1<<12)|(11<<4)|( 1<<0),  
      TIM2_ETR_PA_0        = (TIM2_ETR       <<16)|(0<<12)|( 0<<4)|( 1<<0),  
      TIM2_ETR_PA_5        = (TIM2_ETR       <<16)|(0<<12)|( 5<<4)|( 1<<0),  
      TIM2_ETR_PA_15       = (TIM2_ETR       <<16)|(0<<12)|(15<<4)|( 1<<0),  
      TIM3_CH1_PA_6        = (TIM3_CH1       <<16)|(0<<12)|( 6<<4)|( 2<<0),  
      TIM3_CH1_PB_4        = (TIM3_CH1       <<16)|(1<<12)|( 4<<4)|( 2<<0),  
      TIM3_CH1_PC_6        = (TIM3_CH1       <<16)|(2<<12)|( 6<<4)|( 2<<0),  
      TIM3_CH2_PA_7        = (TIM3_CH2       <<16)|(0<<12)|( 7<<4)|( 2<<0),  
      TIM3_CH2_PB_5        = (TIM3_CH2       <<16)|(1<<12)|( 5<<4)|( 2<<0),  
      TIM3_CH2_PC_7        = (TIM3_CH2       <<16)|(2<<12)|( 7<<4)|( 2<<0),  
      TIM3_CH3_PB_0        = (TIM3_CH3       <<16)|(1<<12)|( 0<<4)|( 2<<0),  
      TIM3_CH3_PC_8        = (TIM3_CH3       <<16)|(2<<12)|( 8<<4)|( 2<<0),  
      TIM3_CH4_PB_1        = (TIM3_CH4       <<16)|(1<<12)|( 1<<4)|( 2<<0),  
      TIM3_CH4_PC_9        = (TIM3_CH4       <<16)|(2<<12)|( 9<<4)|( 2<<0),  
      TIM3_ETR_PD_2        = (TIM3_ETR       <<16)|(3<<12)|( 2<<4)|( 2<<0),  
      TIM4_CH1_PB_6        = (TIM4_CH1       <<16)|(1<<12)|( 6<<4)|( 2<<0),  
      TIM4_CH1_PD_12       = (TIM4_CH1       <<16)|(3<<12)|(12<<4)|( 2<<0),  
      TIM4_CH2_PB_7        = (TIM4_CH2       <<16)|(1<<12)|( 7<<4)|( 2<<0),  
      TIM4_CH2_PD_13       = (TIM4_CH2       <<16)|(3<<12)|(13<<4)|( 2<<0),  
      TIM4_CH3_PB_8        = (TIM4_CH3       <<16)|(1<<12)|( 8<<4)|( 2<<0),  
      TIM4_CH3_PD_14       = (TIM4_CH3       <<16)|(3<<12)|(14<<4)|( 2<<0),  
      TIM4_CH4_PB_9        = (TIM4_CH4       <<16)|(1<<12)|( 9<<4)|( 2<<0),  
      TIM4_CH4_PD_15       = (TIM4_CH4       <<16)|(3<<12)|(15<<4)|( 2<<0),  
      TIM4_ETR_PE_0        = (TIM4_ETR       <<16)|(4<<12)|( 0<<4)|( 2<<0),  
      TIM5_CH1_PA_0        = (TIM5_CH1       <<16)|(0<<12)|( 0<<4)|( 2<<0),  
      TIM5_CH1_PH_10       = (TIM5_CH1       <<16)|(7<<12)|(10<<4)|( 2<<0),  
      TIM5_CH2_PA_1        = (TIM5_CH2       <<16)|(0<<12)|( 1<<4)|( 2<<0),  
      TIM5_CH2_PH_11       = (TIM5_CH2       <<16)|(7<<12)|(11<<4)|( 2<<0),  
      TIM5_CH3_PA_2        = (TIM5_CH3       <<16)|(0<<12)|( 2<<4)|( 2<<0),  
      TIM5_CH3_PH_12       = (TIM5_CH3       <<16)|(7<<12)|(12<<4)|( 2<<0),  
      TIM5_CH4_PA_3        = (TIM5_CH4       <<16)|(0<<12)|( 3<<4)|( 2<<0),  
      TIM5_CH4_PI_0        = (TIM5_CH4       <<16)|(8<<12)|( 0<<4)|( 2<<0),  
      TIM8_BKIN_PA_6       = (TIM8_BKIN      <<16)|(0<<12)|( 6<<4)|( 3<<0),  
      TIM8_BKIN_PI_4       = (TIM8_BKIN      <<16)|(8<<12)|( 4<<4)|( 3<<0),  
      TIM8_CH1_PC_6        = (TIM8_CH1       <<16)|(2<<12)|( 6<<4)|( 3<<0),  
      TIM8_CH1_PI_5        = (TIM8_CH1       <<16)|(8<<12)|( 5<<4)|( 3<<0),  
      TIM8_CH1N_PA_5       = (TIM8_CH1N      <<16)|(0<<12)|( 5<<4)|( 3<<0),  
      TIM8_CH1N_PA_7       = (TIM8_CH1N      <<16)|(0<<12)|( 7<<4)|( 3<<0),  
      TIM8_CH1N_PH_13      = (TIM8_CH1N      <<16)|(7<<12)|(13<<4)|( 3<<0),  
      TIM8_CH2_PC_7        = (TIM8_CH2       <<16)|(2<<12)|( 7<<4)|( 3<<0),  
      TIM8_CH2_PI_6        = (TIM8_CH2       <<16)|(8<<12)|( 6<<4)|( 3<<0),  
      TIM8_CH2N_PB_0       = (TIM8_CH2N      <<16)|(1<<12)|( 0<<4)|( 3<<0),  
      TIM8_CH2N_PB_14      = (TIM8_CH2N      <<16)|(1<<12)|(14<<4)|( 3<<0),  
      TIM8_CH2N_PH_14      = (TIM8_CH2N      <<16)|(7<<12)|(14<<4)|( 3<<0),  
      TIM8_CH3_PC_8        = (TIM8_CH3       <<16)|(2<<12)|( 8<<4)|( 3<<0),  
      TIM8_CH3_PI_7        = (TIM8_CH3       <<16)|(8<<12)|( 7<<4)|( 3<<0),  
      TIM8_CH3N_PB_1       = (TIM8_CH3N      <<16)|(1<<12)|( 1<<4)|( 3<<0),  
      TIM8_CH3N_PB_15      = (TIM8_CH3N      <<16)|(1<<12)|(15<<4)|( 3<<0),  
      TIM8_CH3N_PH_15      = (TIM8_CH3N      <<16)|(7<<12)|(15<<4)|( 3<<0),  
      TIM8_CH4_PC_9        = (TIM8_CH4       <<16)|(2<<12)|( 9<<4)|( 3<<0),  
      TIM8_CH4_PI_2        = (TIM8_CH4       <<16)|(8<<12)|( 2<<4)|( 3<<0),  
      TIM8_ETR_PA_0        = (TIM8_ETR       <<16)|(0<<12)|( 0<<4)|( 3<<0),  
      TIM8_ETR_PI_3        = (TIM8_ETR       <<16)|(8<<12)|( 3<<4)|( 3<<0),  
      TIM9_CH1_PA_2        = (TIM9_CH1       <<16)|(0<<12)|( 2<<4)|( 3<<0),  
      TIM9_CH1_PE_5        = (TIM9_CH1       <<16)|(4<<12)|( 5<<4)|( 3<<0),  
      TIM9_CH2_PA_3        = (TIM9_CH2       <<16)|(0<<12)|( 3<<4)|( 3<<0),  
      TIM9_CH2_PE_6        = (TIM9_CH2       <<16)|(4<<12)|( 6<<4)|( 3<<0),  
      UART4_RX_PA_1        = (UART4_RX       <<16)|(0<<12)|( 1<<4)|( 8<<0),  
      UART4_RX_PC_11       = (UART4_RX       <<16)|(2<<12)|(11<<4)|( 8<<0),  
      UART4_TX_PA_0        = (UART4_TX       <<16)|(0<<12)|( 0<<4)|( 8<<0),  
      UART4_TX_PC_10       = (UART4_TX       <<16)|(2<<12)|(10<<4)|( 8<<0),  
      UART5_RX_PD_2        = (UART5_RX       <<16)|(3<<12)|( 2<<4)|( 8<<0),  
      UART5_TX_PC_12       = (UART5_TX       <<16)|(2<<12)|(12<<4)|( 8<<0),  
      UART6_CTS_PG_13      = (UART6_CTS      <<16)|(6<<12)|(13<<4)|( 8<<0),  
      USART1_CK_PA_8       = (USART1_CK      <<16)|(0<<12)|( 8<<4)|( 7<<0),  
      USART1_CTS_PA_11     = (USART1_CTS     <<16)|(0<<12)|(11<<4)|( 7<<0),  
      USART1_RTS_PA_12     = (USART1_RTS     <<16)|(0<<12)|(12<<4)|( 7<<0),  
      USART1_RX_PA_10      = (USART1_RX      <<16)|(0<<12)|(10<<4)|( 7<<0),  
      USART1_RX_PB_7       = (USART1_RX      <<16)|(1<<12)|( 7<<4)|( 7<<0),  
      USART1_TX_PA_9       = (USART1_TX      <<16)|(0<<12)|( 9<<4)|( 7<<0),  
      USART1_TX_PB_6       = (USART1_TX      <<16)|(1<<12)|( 6<<4)|( 7<<0),  
      USART2_CK_PA_4       = (USART2_CK      <<16)|(0<<12)|( 4<<4)|( 7<<0),  
      USART2_CK_PD_7       = (USART2_CK      <<16)|(3<<12)|( 7<<4)|( 7<<0),  
      USART2_CTS_PA_0      = (USART2_CTS     <<16)|(0<<12)|( 0<<4)|( 7<<0),  
      USART2_CTS_PD_3      = (USART2_CTS     <<16)|(3<<12)|( 3<<4)|( 7<<0),  
      USART2_RTS_PA_1      = (USART2_RTS     <<16)|(0<<12)|( 1<<4)|( 7<<0),  
      USART2_RTS_PD_4      = (USART2_RTS     <<16)|(3<<12)|( 4<<4)|( 7<<0),  
      USART2_RX_PA_3       = (USART2_RX      <<16)|(0<<12)|( 3<<4)|( 7<<0),  
      USART2_RX_PD_6       = (USART2_RX      <<16)|(3<<12)|( 6<<4)|( 7<<0),  
      USART2_TX_PA_2       = (USART2_TX      <<16)|(0<<12)|( 2<<4)|( 7<<0),  
      USART2_TX_PD_5       = (USART2_TX      <<16)|(3<<12)|( 5<<4)|( 7<<0),  
      USART3_CK_PB_12      = (USART3_CK      <<16)|(1<<12)|(12<<4)|( 7<<0),  
      USART3_CK_PC_12      = (USART3_CK      <<16)|(2<<12)|(12<<4)|( 7<<0),  
      USART3_CK_PD_10      = (USART3_CK      <<16)|(3<<12)|(10<<4)|( 7<<0),  
      USART3_CTS_PB_13     = (USART3_CTS     <<16)|(1<<12)|(13<<4)|( 7<<0),  
      USART3_CTS_PD_11     = (USART3_CTS     <<16)|(3<<12)|(11<<4)|( 7<<0),  
      USART3_RTS_PB_14     = (USART3_RTS     <<16)|(1<<12)|(14<<4)|( 7<<0),  
      USART3_RTS_PD_12     = (USART3_RTS     <<16)|(3<<12)|(12<<4)|( 7<<0),  
      USART3_RX_PB_11      = (USART3_RX      <<16)|(1<<12)|(11<<4)|( 7<<0),  
      USART3_RX_PC_11      = (USART3_RX      <<16)|(2<<12)|(11<<4)|( 7<<0),  
      USART3_RX_PD_9       = (USART3_RX      <<16)|(3<<12)|( 9<<4)|( 7<<0),  
      USART3_TX_PB_10      = (USART3_TX      <<16)|(1<<12)|(10<<4)|( 7<<0),  
      USART3_TX_PD_8       = (USART3_TX      <<16)|(3<<12)|( 8<<4)|( 7<<0),  
      USART3_TX_PC_10      = (USART3_TX      <<16)|(2<<12)|(10<<4)|( 7<<0),  
      USART6_CK_PC_8       = (USART6_CK      <<16)|(2<<12)|( 8<<4)|( 8<<0),  
      USART6_CK_PG_7       = (USART6_CK      <<16)|(6<<12)|( 7<<4)|( 8<<0),  
      USART6_CTS_PG_15     = (USART6_CTS     <<16)|(6<<12)|(15<<4)|( 8<<0),  
      USART6_RTS_PG_8      = (USART6_RTS     <<16)|(6<<12)|( 8<<4)|( 8<<0),  
      USART6_RTS_PG_12     = (USART6_RTS     <<16)|(6<<12)|(12<<4)|( 8<<0),  
      USART6_RX_PC_7       = (USART6_RX      <<16)|(2<<12)|( 7<<4)|( 8<<0),  
      USART6_RX_PG_9       = (USART6_RX      <<16)|(6<<12)|( 9<<4)|( 8<<0),  
      USART6_TX_PC_6       = (USART6_TX      <<16)|(2<<12)|( 6<<4)|( 8<<0),  
      USART6_TX_PG_14      = (USART6_TX      <<16)|(6<<12)|(14<<4)|( 8<<0),  
      END_OF_TABLE     = 0
    } MAP;

  public:
    
    









 
    static void set( GPIO_TypeDef *gpio, 
                     BYTE          pinId, 
                     DWORD         mode, 
                     BYTE          af = 0 );

    
    














 
    static bool set( Function func,
                     DWORD    mode = 0 );

  public:
    
    


 
    static MAP table[];

}; 

#line 59 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/RTOS_MCU.h"







 























 
class cHwRTOS_MCU
{
  private:
    
    typedef struct
    {
      struct
      {
        float s[32];
      } fpu;

      struct
      {
        uint32_t r4;
        uint32_t r5;
        uint32_t r6;
        uint32_t r7;
        uint32_t r8;
        uint32_t r9;
        uint32_t r10;
        uint32_t r11;
      } sw;

      struct
      {
        uint32_t r4;
        uint32_t lr_pc;
      } add;

      struct
      {
        uint32_t r0;
        uint32_t r1;
        uint32_t r2;
        uint32_t r3;
        uint32_t r12;
        uint32_t lr;
        uint32_t pc;
        uint32_t psr;
      } hw;

    } StackFrame;

  public:
    
    
 
    cHwRTOS_MCU( void );

    
    









 
    static void init( WORD us, DWORD (*scheduleIn)( DWORD sp, BYTE flag ))
    {
      schedule = scheduleIn;

      ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL =   (1UL << 0)
                      | (1UL << 1)
                      | (1UL << 2);

      ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (1E-6 * ((84000000)) * us) - 1;

			sysTicTime = us;
    }

    
    










 
    static unsigned start( char     *stackAddrIn,
                           unsigned  stackSizeIn,
                           void     *arg,
                           DWORD   (*startFunc)(void *) )
    {
      void *stackAddr = (void*)( ( (unsigned)stackAddrIn+3) & ~0x03 ); 
      int   stackSize = stackSizeIn - 4;

      StackFrame *stack = (StackFrame *)((unsigned)stackAddr + stackSize - sizeof(StackFrame));

      stack->hw.r0  = (uint32_t)arg;
      stack->hw.r1  = 0;
      stack->hw.r2  = 0;
      stack->hw.r3  = 0;
      stack->hw.r12 = 0;
      stack->hw.pc  = ((uint32_t)startFunc ) & ~0x01;
      stack->hw.lr  = ((uint32_t)deleteFunc) & ~0x01;
      stack->hw.psr = 0x21000000; 

      stack->sw.r4  = 0;
      stack->sw.r5  = 0;
      stack->sw.r6  = 0;
      stack->sw.r7  = 0;
      stack->sw.r8  = 0;
      stack->sw.r9  = 0;
      stack->sw.r10 = 0;
      stack->sw.r11 = 0;

      stack->add.r4    = 0;
      stack->add.lr_pc = 0xFFFFFFF9;

      for( int i = 0; i < 32; i++ )
      {
        stack->fpu.s[i] = 0;
      }

      return( (unsigned)stackAddr + stackSize - sizeof(StackFrame) );
    }

    
    



 
    static void stop( DWORD id )
    {
      ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICSR |= (1UL << 28); 
    }

    
    


 
    static void pause( void )
    {
      ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->ICSR |= (1UL << 28); 
    }

		
    


 
		
    static unsigned long getSysTime( void )
		{
			return( (unsigned long)((unsigned long long)sysTic*sysTicTime/1000) );
		}

    
    
 
    static void deleteFunc( void )
    {
      while(1);
    }

  public:    
    
    static DWORD (*schedule)( DWORD sp, BYTE flag );

  public:
    
    static unsigned long  sysTic;
    static unsigned       sysTicTime;

}; 

#line 60 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"


#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/ADC_MCU.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/ADC.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Timer.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Timer.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/List.h"







 












 
class cList
{
  public:
    
    








 
    class Item
    {
      public:
          
          

 
          Item( cList *list = 0 );

          
          

 
          Item *getNext( void );

          
          


 
          Item *getPrev( cList &list );

        private:
          
          
 
          virtual void update( void ) {};

        private:
          
          Item *PtrNext; 

        friend class cList;
      }; 
      

  public:
    
    
 
    cList( void );

    
    




 
    BYTE add( Item *itemPtr );

    
    
 
    void updateAll( void );

    
    


 
    Item* getFirst( void );

    
    


 
    Item* operator[](WORD index);

  private:
    
    Item *PtrFirst; 

}; 

#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Timer.h"















 
class cHwTimer
{
  public:
    
    

 
    typedef enum
    {
      NORMAL  = 0x00, 
      INVERS  = 0x01  
    } Mode;

  protected:
    
    
    
    cHwTimer( void )
    {
    }

  public:
    
    

 
    virtual DWORD getCycleTime( void );

    
    



 
    virtual void add( cList::Item *ptr );

    
    


 
    virtual void enablePWM( BYTE channel  = 0, 
                            Mode polarity = NORMAL) = 0;

    
    


 
    virtual void setPWM( WORD value, 
                         BYTE channel = 0 ) = 0;

  protected:
  
  public:
    
    
    
    
    
    virtual void isrHandler( void );

  protected:
    
    DWORD cycleTime; 

  private:
    
    cList isrList; 

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/ADC.h"





























 
class cHwADC : public cList::Item
{
  protected:
    
    
    
    
    
    
    
    cHwADC( BYTE      num, 
            cHwTimer *tPtr = 0 );

  public:
    
    

 
    virtual void enable( BYTE ch );

    
    


 
    virtual WORD get( BYTE ch );

    
    

 
    virtual BYTE getNumberOfChannels( void );

    
    

 
    virtual void update( void );

  public:
    
    
    
    
    
    virtual void isr( void );

  protected:
    
    
    
    
    virtual WORD getResult( void ) = 0;

    
    
    
    
    virtual void startCh( BYTE ch ) = 0;

    
    
    
    
    virtual void configCh( BYTE ch ) = 0;

  protected:
    
    WORD *result[2];      
    BYTE  idx;            
    BYTE *chList;         
    BYTE  numOfChannels;  
    BYTE  numActivatedCh; 
    BYTE  currentCh;      
    BYTE  currentId;      
    BYTE  isRunning;      

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/ADC_MCU.h"








 
class cHwADC_0 : public cHwADC
{
  public:
    
    




 
    cHwADC_0( cHwTimer *tPtr = 0 );

  private:
    
    virtual WORD getResult( void );

    
    virtual void startCh( BYTE ch );

    
    virtual void configCh( BYTE ch );

  public:
    
    static cHwADC *adcPtr;
    
}; 

#line 63 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/DAC_MCU.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/DAC.h"







 





















 
class cHwDAC
{
  protected:
    
    
    
    cHwDAC( BYTE numIn );

  public:
    
    




 
    virtual void set( WORD value,
                      BYTE ch = 0 ) = 0;

    
    

 
    virtual void enable( BYTE ch = 0 ) = 0;

    
    

 
    virtual BYTE getNumberOfChannels( void );

  protected:
    
    BYTE  numOfChannels;  

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/DAC_MCU.h"








 
class cHwDAC_0 : public cHwDAC
{
  public:
    
    
 
    cHwDAC_0( void );

    
    virtual void set( WORD value, 
                      BYTE ch = 0 );

    
    virtual void enable( BYTE ch = 0 );

}; 

#line 64 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Encoder_MCU.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Encoder.h"







 





#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Port.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"









 


#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Port.h"











 
class cHwPort
{
  public:
    
    

 
    typedef enum
    {
      
      In  = 0x00,         
      Out = 0x01,         

      
      OD = 0x02,          
      PU = 0x04,          
      PD = 0x08,          

      
      InFL  = In,         
      InPU  = In|PU,      
      InPD  = In|PD,      
      OutPP = Out,        
      OutOD = Out  |OD,   
      OutPU = OutOD|PU,   
      OutPD = OutOD|PD    
    } Mode;

  public:
    
    





 
    class Pin
    {
      public:
        
        


 
        Pin( cHwPort &port, BYTE pinId );

        
        




 
        Pin( cHwPort &port, BYTE pinId, Mode mode );

        
        

 
        virtual void setMode( Mode mode )
        {
          port.setPinMode( pinId, mode );
        }

        
        
 
        virtual void set( void )
        {
          port.set( pinMask );
        }

        
        

 
        virtual void set( bool value )
        {
          if( value )  port.set( pinMask );
          else         port.clr( pinMask );
        }

        
        
 
        virtual void clr( void )
        {
          port.clr( pinMask );
        }

        
        

 
        virtual bool get( void )
        {
          return( (port.get() & pinMask) != 0 );
        }

      private:
        
        cHwPort &port;
        BYTE     pinId;
        MTYPE    pinMask;

    }; 
    

  protected:
    
    
    
    cHwPort( void )
    {
    }

  public:
    
    


 
    virtual void setMode( MTYPE mask, Mode mode ) = 0;

    
    


 
    virtual void setPinMode( BYTE pinId, Mode mode ) = 0;

    
    

 
    virtual void set( MTYPE mask ) = 0;

    
    


 
    virtual void set( MTYPE mask, MTYPE value ) = 0;

    
    

 
    virtual void clr( MTYPE mask ) = 0;

    
    

 
    virtual MTYPE get( void ) = 0;

}; 

#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Encoder.h"







 
class cHwEncoder
{
  public:
    
    

 
    typedef enum
    {
      NORMAL  = 0x00, 
      REVERSE = 0x01  
    } Mode;

  protected:
    
    
    
    cHwEncoder( Mode modeIn )
    {
      mode = modeIn;
    }

  public:
    
    

 
    virtual int get( void ) = 0;
  

  protected:
    
    Mode mode;

}; 






 
class cHwEncoder_Emul : public cHwEncoder, cList::Item
{
  public:
    
    cHwEncoder_Emul( cHwPort::Pin &pinAIn,
                     cHwPort::Pin &pinBIn,
                     cHwTimer     &timer,
                     Mode          modeIn )
    : cHwEncoder( modeIn ),
      pinA( pinAIn ),
      pinB( pinBIn )
      {
          pinA.setMode( cHwPort::InFL );
          pinB.setMode( cHwPort::InFL );
          timer.add( this );
          A_last = 0;
          B_last = 0;
          cnt    = 0;
      }

    
    virtual void update( void )
    {
      BYTE A_new = pinA.get();
      BYTE B_new = pinB.get();

      cSystem::disableInterrupt();
        
      if( A_new != A_last )
      {
          if( A_new == B_new )
          {
            cnt++;
          }
          else
          {
            cnt--;
          }
      }
      else if( B_new != B_last )
      {
          if( B_new != A_new )
          {
            cnt++;
          }
          else
          {
            cnt--;
          }
      }
      cSystem::enableInterrupt();
        
      A_last = A_new;
      B_last = B_new;
    }

    
    virtual int get( void )
    {
        cSystem::disableInterrupt();
        int ret = cnt;
        cnt = 0;
        cSystem::enableInterrupt();
        return( (mode&REVERSE)?ret:-ret );
    }

  private:
    
    cHwPort::Pin &pinA;
    cHwPort::Pin &pinB;
    BYTE A_last;
    BYTE B_last;

    int cnt;
};

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Encoder_MCU.h"








 
class cHwEncoder_N : public cHwEncoder
{
  public:
    
    

 
    typedef enum
    {
      TIM_2 = 1,  
      TIM_3,      
      TIM_4,      
      TIM_5,      
    } TimerId;

  public:
    
    


 
    cHwEncoder_N( TimerId timerId, Mode mode );

    
    virtual int get();

  private:
    
    TIM_TypeDef *ptr;
    WORD         cntLast;

}; 

#line 65 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"




















 



















 




















 



















 

 



 
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Ethernet.h"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetStd.h"










 






template <BYTE size> class cNetAddr
{
  public:
    
    BYTE operator==(const cNetAddr &x) const
    {
      return( memcmp(addr, x.addr, size) == 0 );
    }

    
    void operator=(BYTE *addrIn)
    {
      BYTE i=0;
      while(i < size)
      {
        addr[i] = addrIn[i];
        i++;
       }
    }

    
    void operator=(DWORD addrIn)
    {
      BYTE i=0;
      while(i < size)
      {
        addr[i] = (addrIn>>(8*i))&0xFF;
        i++;
       }
    }

    
    operator DWORD()
    {
      return( (DWORD)(*((DWORD*)addr)) );
    }

  public:
    
    BYTE addr[size];

};

WORD hton( const WORD in );
DWORD hton( const DWORD in );

WORD ntoh( const WORD in );
DWORD ntoh( const DWORD in );

#pragma pack(1)
template <class T> class cNetTYPE
{
  public:
    T data;

    void operator=(T x)
    {
      data = hton( x );
    }

    operator T()
    {
      return( ntoh(data) );
    }
};
#pragma pack(8)

typedef BYTE            cNetBYTE;
typedef cNetTYPE<WORD>  cNetWORD;
typedef cNetTYPE<DWORD> cNetDWORD;

const cNetAddr<4> zeroAddr = {0,0,0,0};
const cNetAddr<6> zeroAddrPhy = {0,0,0,0,0,0};
const cNetAddr<4> broadcastAddr = {255,255,255,255};
const cNetAddr<6> broadcastAddrPhy = {0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};

WORD Checksum(BYTE *buf, WORD len, DWORD initialSum);

#line 6 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Ethernet.h"



#pragma pack(1)  

class cHwEthernet_Header
{
  public:                        
    cNetAddr<6> destinationAddr; 
    cNetAddr<6> sourceAddr;      
    cNetWORD    type;            
	                               
};     

#pragma pack(8)

class cNetARP;
class cNetIP;


class cHwEthernet
{
  public:
    enum
    {
      TYPE_IP    = 0x0800,
      TYPE_ARP   = 0x0806,
      TYPE_UNDEF = 0
    };

    cHwEthernet( const cNetAddr<6> &addrPhy );

    virtual void update();

    virtual void create( const cNetAddr<6> destAddr,
                         const WORD        type
                       ) = 0;

    virtual void PacketSend( BYTE *packet,
                             WORD  len                 
                           ) = 0;

    virtual bool PacketReceive( void ) = 0;

    virtual WORD getType( void ) = 0;
    
    void setARP( cNetARP *arpIn );
    void setIP( cNetIP *ipIn );

    const cNetAddr<4> &getIP( void ); 

  public:
    BYTE        buf[1500+1];
    WORD        plen;
    const cNetAddr<6> &addrPhy;
  
    cNetARP   *arp;
    cNetIP *ip;
};

#line 90 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"

#line 92 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"

 

 




 




     


#line 115 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"


 

 



 





   


 


  
 



  
typedef struct  {
  volatile uint32_t   Status;                 
  uint32_t   ControlBufferSize;      
  uint32_t   Buffer1Addr;            
  uint32_t   Buffer2NextDescAddr;    
 

  uint32_t   ExtendedStatus;         
  uint32_t   Reserved1;              
  uint32_t   TimeStampLow;           
  uint32_t   TimeStampHigh;          

} ETH_DMADESCTypeDef;


typedef struct{
  uint32_t length;
  uint32_t buffer;
  volatile ETH_DMADESCTypeDef *descriptor;
}FrameTypeDef;


typedef struct  {
  volatile ETH_DMADESCTypeDef *FS_Rx_Desc;           
  volatile ETH_DMADESCTypeDef *LS_Rx_Desc;           
  volatile uint32_t  Seg_Count;                      
} ETH_DMA_Rx_Frame_infos;
  

 


  
 
#line 183 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"

 












  
   

     




  





 












  
   

   




  






 


  
 














 



  
#line 292 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"



  





  




  


  



 

 


 















 



  
#line 358 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"



  








  




  










 

 
#line 408 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"

 


 



 


  
 


  





  





  
#line 446 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"



  






  








  








  







  





  
#line 495 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"

 


  
 



  





  







  





  
#line 546 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"



  
#line 568 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"



  
#line 578 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"



  
#line 588 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"



  





 


  
 


 



  




 


  
 


  






 






  
#line 646 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"


 


  
 


  





  










  






  
#line 689 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"






  







 
#line 710 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.h"


 



 


 


 



 



 


 


 


 


 


 


 



 





class cHwEthernet_MCU: public cHwEthernet
{
	public:
	  cHwEthernet_MCU( cHwPort::Pin &reset, const cNetAddr<6> &addrPhyIn );

  public:


    virtual void create( const cNetAddr<6> destAddr, const WORD type );


    virtual void     PacketSend   (uint8_t* packet, uint16_t len);
		virtual bool     PacketReceive();

    virtual WORD getType(  );

		
  private:
    void  low_level_init( void );
    int   low_level_output( BYTE *buff, DWORD length );
    DWORD low_level_input ( BYTE *ibuffer, DWORD maxLen);

volatile uint32_t  EthInitStatus;
volatile uint8_t EthLinkStatus;



 
 
 








 
uint32_t ETH_Init( uint16_t PHYAddress)
{
  uint32_t RegValue = 0, tmpreg = 0;
  volatile uint32_t i = 0;
  uint32_t hclk = (84000000);
  volatile uint32_t timeout = 0;

   
   
   
  tmpreg = ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIAR;
   
  tmpreg &= ((uint32_t)0xFFFFFFE3);

   
  if((hclk >= 20000000)&&(hclk < 35000000))
  {
     
    tmpreg |= (uint32_t)((uint32_t)0x00000008);
  }
  else if((hclk >= 35000000)&&(hclk < 60000000))
  {
     
    tmpreg |= (uint32_t)((uint32_t)0x0000000C);
  }
  else if((hclk >= 60000000)&&(hclk < 100000000))
  {
     
    tmpreg |= (uint32_t)((uint32_t)0x00000000);
  }
  else if((hclk >= 100000000)&&(hclk < 150000000))
  {
     
    tmpreg |= (uint32_t)((uint32_t)0x00000004);
  }
  else  
  {
     
    tmpreg |= (uint32_t)((uint32_t)0x00000010);
  }

   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIAR = (uint32_t)tmpreg;
   
   
  if(!(ETH_WritePHYRegister(PHYAddress, 0, ((uint16_t)0x8000))))
  {
     
    return ((uint32_t)0);
  }

   
  cSystem::delayMilliSec(10);

  if( ETH_AutoNegotiation )
  {
     
    do
    {
      timeout++;
    } while (!(ETH_ReadPHYRegister(PHYAddress, 1) & ((uint16_t)0x0004)) && (timeout < ((uint32_t)0x0004FFFF)));

     
    if(timeout == ((uint32_t)0x0004FFFF))
    {
      return ((uint32_t)0);
    }

     
    timeout = 0;
     
    if(!(ETH_WritePHYRegister(PHYAddress, 0, ((uint16_t)0x1000))))
    {
       
      return ((uint32_t)0);
    }

     
    do
    {
      timeout++;
    } while (!(ETH_ReadPHYRegister(PHYAddress, 1) & ((uint16_t)0x0020)) && (timeout < (uint32_t)((uint32_t)0x0004FFFF)));

     
    if(timeout == ((uint32_t)0x0004FFFF))
    {
      return ((uint32_t)0);
    }

     
    timeout = 0;

     
    RegValue = ETH_ReadPHYRegister(PHYAddress, ((uint16_t)31));

		switch (RegValue & ((uint16_t)0x001C))
		{
		  case (18):
			  ETH_Mode  = ((uint32_t)0x00000800); 
				ETH_Speed = ((uint32_t)0x00004000); 
			  break;

		  case (8):
			  ETH_Mode  = !((uint32_t)0x00000800); 
				ETH_Speed = ((uint32_t)0x00004000); 
  			break;

		  case (14):
			  ETH_Mode  = ((uint32_t)0x00000800); 
				ETH_Speed = !((uint32_t)0x00004000);
			  break;

		  case (4):
			  ETH_Mode  = !((uint32_t)0x00000800); 
				ETH_Speed = !((uint32_t)0x00004000);
			  break;

		  default:
			  break;
		}
  }
  else
  {
    if(!ETH_WritePHYRegister(PHYAddress, 0, ((uint16_t)(ETH_Mode >> 3) |
                                                   (uint16_t)(ETH_Speed >> 1))))
    {
       
      return ((uint32_t)0);
    }
     
    cSystem::delayMilliSec(100);

  }
   
   
  tmpreg = ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACCR;
   
  tmpreg &= ((uint32_t)0xFF20810F);
  
  tmpreg |= (uint32_t)(ETH_Watchdog |
                       ETH_Jabber |
                  ETH_InterFrameGap |
                  ETH_CarrierSense |
                  ETH_Speed |
                  ETH_ReceiveOwn |
                  ETH_LoopbackMode |
                  ETH_Mode |
                  ETH_ChecksumOffload |
                  ETH_RetryTransmission |
                  ETH_AutomaticPadCRCStrip |
                  ETH_BackOffLimit |
                  ETH_DeferralCheck);
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACCR = (uint32_t)tmpreg;

   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACFFR = (uint32_t)(ETH_ReceiveAll |
                          ETH_SourceAddrFilter |
                          ETH_PassControlFrames |
                          ETH_BroadcastFramesReception |
                          ETH_DestinationAddrFilter |
                          ETH_PromiscuousMode |
                          ETH_MulticastFramesFilter |
                          ETH_UnicastFramesFilter);
  
   
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACHTHR = (uint32_t)ETH_HashTableHigh;
  
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACHTLR = (uint32_t)ETH_HashTableLow;
  
   
   
  tmpreg = ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACFCR;
   
  tmpreg &= ((uint32_t)0x0000FF41);

  tmpreg |= (uint32_t)((ETH_PauseTime << 16) |
                   ETH_ZeroQuantaPause |
                   ETH_PauseLowThreshold |
                   ETH_UnicastPauseFrameDetect |
                   ETH_ReceiveFlowControl |
                   ETH_TransmitFlowControl);
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACFCR = (uint32_t)tmpreg;
  
   
   
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACVLANTR = (uint32_t)(ETH_VLANTagComparison |
                             ETH_VLANTagIdentifier);

   
   
   
  tmpreg = ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMAOMR;
   
  tmpreg &= ((uint32_t)0xF8DE3F23);

   
   
   
   
   
   
   
   
   
  tmpreg |= (uint32_t)(ETH_DropTCPIPChecksumErrorFrame |
                  ETH_ReceiveStoreForward |
                  ETH_FlushReceivedFrame |
                  ETH_TransmitStoreForward |
                  ETH_TransmitThresholdControl |
                  ETH_ForwardErrorFrames |
                  ETH_ForwardUndersizedGoodFrames |
                  ETH_ReceiveThresholdControl |
                  ETH_SecondFrameOperate);
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMAOMR = (uint32_t)tmpreg;

   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMABMR = (uint32_t)(ETH_AddressAlignedBeats |
                          ETH_FixedBurst |
                          ETH_RxDMABurstLength |  
                          ETH_TxDMABurstLength |
                         (ETH_DescriptorSkipLength << 2) |
                          ETH_DMAArbitration |
                          ((uint32_t)0x00800000));  


     
    ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMABMR |= ((uint32_t)0x00000080);


   
  return ((uint32_t)1);
}





 
void ETH_Start(void)
{
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACCR |= ((uint32_t)0x00000008);
  
   
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMAOMR |= ((uint32_t)0x00100000);
  
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACCR |= ((uint32_t)0x00000004);

   
   
    ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMAOMR |= ((uint32_t)0x00002000);
  
   
 
    ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMAOMR |= ((uint32_t)0x00000002);
}











 
void ETH_MACAddressConfig(uint32_t MacAddr, uint8_t *Addr)
{
  uint32_t tmpreg;

   
  tmpreg = ((uint32_t)Addr[5] << 8) | (uint32_t)Addr[4];
   
  (*(volatile uint32_t *) (((((((uint32_t)0x40000000) + 0x00020000) + 0x8000)) + 0x40) + MacAddr)) = tmpreg;
   
  tmpreg = ((uint32_t)Addr[3] << 24) | ((uint32_t)Addr[2] << 16) | ((uint32_t)Addr[1] << 8) | Addr[0];

   
  (*(volatile uint32_t *) (((((((uint32_t)0x40000000) + 0x00020000) + 0x8000)) + 0x44) + MacAddr)) = tmpreg;
}



 
 
 






 
FrameTypeDef ETH_Get_Received_Frame(void);





 
uint32_t ETH_Prepare_Transmit_Descriptors(uint16_t FrameLength);








 
void ETH_DMARxDescChainInit(ETH_DMADESCTypeDef *DMARxDescTab, uint8_t *RxBuff, uint32_t RxBuffCount);





 
uint32_t ETH_CheckFrameReceived(void);







 
void ETH_DMATxDescChainInit(ETH_DMADESCTypeDef *DMATxDescTab, uint8_t* TxBuff, uint32_t TxBuffCount);

 
 
 













 
uint16_t ETH_ReadPHYRegister(uint16_t PHYAddress, uint16_t PHYReg)
{
  uint32_t tmpreg = 0;
volatile uint32_t timeout = 0;

   
  tmpreg = ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIAR;
   
  tmpreg &= ~((uint32_t)0xFFFFFFE3);
   
  tmpreg |=(((uint32_t)PHYAddress<<11) & ((uint32_t)0x0000F800));  
  tmpreg |=(((uint32_t)PHYReg<<6) & ((uint32_t)0x000007C0));       
  tmpreg &= ~((uint32_t)0x00000002);                               
  tmpreg |= ((uint32_t)0x00000001);                                
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIAR = tmpreg;
   
  do
  {
    timeout++;
    tmpreg = ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIAR;
  } while ((tmpreg & ((uint32_t)0x00000001)) && (timeout < (uint32_t)((uint32_t)0x0004FFFF)));
   
  if(timeout == ((uint32_t)0x0004FFFF))
  {
    return (uint16_t)((uint32_t)0);
  }

   
  return (uint16_t)(((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIDR);
}












 
uint32_t ETH_WritePHYRegister(uint16_t PHYAddress, uint16_t PHYReg, uint16_t PHYValue)
{
  uint32_t tmpreg = 0;
  volatile uint32_t timeout = 0;

   
  tmpreg = ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIAR;
   
  tmpreg &= ~((uint32_t)0xFFFFFFE3);
   
  tmpreg |=(((uint32_t)PHYAddress<<11) & ((uint32_t)0x0000F800));  
  tmpreg |=(((uint32_t)PHYReg<<6) & ((uint32_t)0x000007C0));       
  tmpreg |= ((uint32_t)0x00000002);                                
  tmpreg |= ((uint32_t)0x00000001);                                
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIDR = PHYValue;
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIAR = tmpreg;
   
  do
  {
    timeout++;
    tmpreg = ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->MACMIIAR;
  } while ((tmpreg & ((uint32_t)0x00000001)) && (timeout < (uint32_t)((uint32_t)0x0004FFFF)));
   
  if(timeout == ((uint32_t)0x0004FFFF))
  {
    return ((uint32_t)0);
  }

   
  return ((uint32_t)1);
}


  
  bool     ETH_AutoNegotiation;
  uint32_t ETH_Watchdog;
  uint32_t ETH_Jabber;
  uint32_t ETH_InterFrameGap;
  uint32_t ETH_CarrierSense;
  uint32_t ETH_Speed;
  uint32_t ETH_ReceiveOwn;
  uint32_t ETH_LoopbackMode;
  uint32_t ETH_Mode;
  uint32_t ETH_ChecksumOffload;
  uint32_t ETH_RetryTransmission;
  uint32_t ETH_AutomaticPadCRCStrip;
  uint32_t ETH_BackOffLimit;
  uint32_t ETH_DeferralCheck;
  uint32_t ETH_ReceiveAll;
  uint32_t ETH_SourceAddrFilter;
  uint32_t ETH_PassControlFrames;
  uint32_t ETH_BroadcastFramesReception;
  uint32_t ETH_DestinationAddrFilter;
  uint32_t ETH_PromiscuousMode;
  uint32_t ETH_MulticastFramesFilter;
  uint32_t ETH_UnicastFramesFilter;
  uint32_t ETH_HashTableHigh;
  uint32_t ETH_HashTableLow;
  uint32_t ETH_PauseTime;
  uint32_t ETH_ZeroQuantaPause;
  uint32_t ETH_PauseLowThreshold;
  uint32_t ETH_UnicastPauseFrameDetect;
  uint32_t ETH_ReceiveFlowControl;
  uint32_t ETH_TransmitFlowControl;
  uint32_t ETH_VLANTagComparison;
  uint32_t ETH_VLANTagIdentifier;
  uint32_t ETH_DropTCPIPChecksumErrorFrame;
  uint32_t ETH_ReceiveStoreForward;
  uint32_t ETH_FlushReceivedFrame;
  uint32_t ETH_TransmitStoreForward;
  uint32_t ETH_TransmitThresholdControl;
  uint32_t ETH_ForwardErrorFrames;
  uint32_t ETH_ForwardUndersizedGoodFrames;
  uint32_t ETH_ReceiveThresholdControl;
  uint32_t ETH_SecondFrameOperate;
  uint32_t ETH_AddressAlignedBeats;
  uint32_t ETH_FixedBurst;
  uint32_t ETH_RxDMABurstLength;
  uint32_t ETH_TxDMABurstLength;
  uint32_t ETH_DescriptorSkipLength;
  uint32_t ETH_DMAArbitration;

};


#line 66 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/I2Cmaster_MCU.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/I2Cmaster.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/I2Cmaster.h"



















 
class cHwI2Cmaster
{
  public:
    
    
 
    typedef enum
    {
      CR_10kHz  = 0, 
      CR_100kHz    , 
      CR_400kHz    , 
      CR_1000kHz     
    } MODE;

  protected:
    
    
    
    cHwI2Cmaster( BYTE maskIntrIn = true );
    
  public:
    
    
 
    
    class Device
    {
      public:
        
        
 
        
        Device( cHwI2Cmaster &i2cIn,     
                BYTE          hwAddrIn   
              )

        : i2c( i2cIn)

        {
          hwAddr = hwAddrIn;
          isErrorFlag = false;
        }

        
        

 
        virtual BYTE read( void );

         
        


 
        virtual BYTE read( BYTE addr );

         
        


 
        virtual BYTE read( WORD addr );

        
        


 
        virtual void read( BYTE *data, BYTE size   );

        
        



 
        virtual void read( BYTE addr, BYTE *data, BYTE size );

        
        



 
        virtual void read( WORD addr, BYTE *data, BYTE size );

        
        
 
        virtual void write( BYTE data  
                          );
        
        
        
 
        virtual void write( BYTE addr,  
                            BYTE data   
                          );

        
        
 
        virtual void write( WORD addr,  
                            BYTE data   
                          );
        
        
        
 
        virtual void write( BYTE *data, 
                            BYTE size   
                          );
        
        
        
 
        virtual void write( BYTE addr,  
                            BYTE *data, 
                            BYTE size   
                          );
        
        
        
 
        virtual void write( WORD addr,  
                            BYTE *data, 
                            BYTE size   
                          );
        
        
        





 
        virtual BYTE isError( void );

        cHwI2Cmaster &i2c;
        BYTE          hwAddr;
        BYTE isErrorFlag;
    };

  protected:
    
    BYTE isHardwareOK;
    BYTE maskIntr;


  protected:
    
    virtual BYTE write( BYTE  hwAddr,
                             BYTE *adr,
                             BYTE  sizeAdr,
                             BYTE *data,
                             BYTE  sizeData );
    
    virtual BYTE read( BYTE  hwAddr,
                             BYTE *adr,
                             BYTE  sizeAdr,
                             BYTE *data,
                             BYTE  sizeData );
  private:
    
    
    
    
    virtual void start( void ) = 0;

    
    
    
    
    virtual void stop( void ) = 0;

    
    
    
    
    
    virtual void sendAddr( BYTE hwAddr ) = 0;

    
    
    
    
    virtual void writeByte( BYTE data ) = 0;

    
    
    
    
    virtual BYTE readByteAck( void ) = 0;
    
    
    
    
    
    virtual BYTE readByteNack( void ) = 0;

}; 








 
class cHwI2Cmaster_Emul : public cHwI2Cmaster
{
  public:
    
    





 
    cHwI2Cmaster_Emul( cHwPort::Pin &pinSCL,
                       cHwPort::Pin &pinSDA,
                       MODE          mode );

  private:
    
    virtual void start( void );

    
    virtual void stop( void );

    
    virtual void sendAddr( BYTE addr );

    
    virtual void writeByte( BYTE byte );

    
    virtual BYTE readByteAck( void );

    
    virtual BYTE readByteNack( void );

    
    
    
    virtual void waitForAckn( void );

    
    virtual void wait( void );

  private:
    
    volatile BYTE *ptrIn;
    volatile BYTE *ptrDir;
    volatile BYTE *ptrOut;

    WORD Twait;
  
    BYTE maskSCL;
    BYTE maskSDA;

    cHwPort::Pin &pinSCL;
    cHwPort::Pin &pinSDA;
    
}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/I2Cmaster_MCU.h"








 
class cHwI2Cmaster_N : public cHwI2Cmaster
{
  public:
    
    
 
    typedef enum
    {
      I2C_1 = 1, 
      I2C_2      
    } I2C_ID;
    
  public:
    
    






 
    cHwI2Cmaster_N( I2C_ID id, 
                    MODE   mode, 
                    BYTE   maskIntr = true );

  private:
    
    virtual void waitForAckn( MTYPE state );

    
    virtual void start( void );

    
    virtual void stop( void );

    
    virtual void sendAddr( BYTE addr );

    
    virtual void writeByte( BYTE byte );

    
    virtual BYTE readByteAck( void );

    
    virtual BYTE readByteNack( void );

  private:
    
    I2C_TypeDef* ptrBase;

}; 

#line 67 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_BKPRAM.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Memory.h"







 




















 
class cHwMemory
{
  protected:
    
    
    
    
    
    cHwMemory( DWORD size, 
               BYTE  def );

  public:
    
    
 
    virtual void unlock( void ) = 0;
    
    
    
 
    virtual void lock( void ) = 0;
    
    
    


 
    virtual void write( DWORD addr, 
                        BYTE  data );
    
    
    


 
    virtual BYTE read( DWORD addr );

    
    

 
    virtual void clear( DWORD offset = 0 );

    
    

 
    virtual DWORD getSize( void );

    
    

 
    virtual bool isFlash( void );

  protected:
    
    
    
    
    
    virtual void writeByte( DWORD addr, 
                            BYTE  data ) = 0;

    
    
    
    
    
    virtual BYTE readByte( DWORD addr ) = 0;

  protected:
    
    DWORD size;
    BYTE  def;
    bool  isFlashFlag;

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_BKPRAM.h"








 
class cHwMemory_BKPRAM : public cHwMemory
{
  public:
    
    
 
    cHwMemory_BKPRAM( void );

    
    virtual void lock( ) {}
    virtual void unlock() {}

  private:
    
    virtual void writeByte( DWORD addr, 
                            BYTE  data );

    
    virtual BYTE readByte( DWORD addr );

  private:
    
    DWORD *ptr;

}; 

#line 68 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_Flash.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_Flash.h"








 
class cHwMemory_Flash : public cHwMemory
{
  public:
    
    typedef enum
    {
      
      
      SECTOR_0  = (0x00<<8)|( 0<<4)|(1<<0), 
      SECTOR_1  = (0x01<<8)|( 1<<4)|(1<<0), 
      SECTOR_2  = (0x02<<8)|( 2<<4)|(1<<0), 
      SECTOR_3  = (0x03<<8)|( 3<<4)|(1<<0), 
      SECTOR_4  = (0x04<<8)|( 4<<4)|(4<<0), 

      SECTOR_5  = (0x08<<8)|( 5<<4)|(8<<0), 
      SECTOR_6  = (0x10<<8)|( 6<<4)|(8<<0), 
      SECTOR_7  = (0x18<<8)|( 7<<4)|(8<<0), 

      SECTOR_8  = (0x20<<8)|( 8<<4)|(8<<0), 
      SECTOR_9  = (0x28<<8)|( 9<<4)|(8<<0), 
      SECTOR_10 = (0x30<<8)|(10<<4)|(8<<0), 
      SECTOR_11 = (0x38<<8)|(11<<4)|(8<<0), 
      
      
      
    } Sector;

  public:
    
    

 
    cHwMemory_Flash( Sector sector );

  private:
    
    virtual void writeByte( DWORD addr,
                            BYTE  data );

    
    virtual BYTE readByte( DWORD addr );

    
    virtual void lock( ) {}
    virtual void unlock() {}

  public:
    
    virtual void clear( DWORD offset = 0 );

  private:
    
    BYTE  *ptr;
    BYTE   sectorID;
    DWORD  dataDoubleWord;

}; 

#line 69 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_RAM.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_RAM.h"








 
class cHwMemory_RAM : public cHwMemory
{
  public:
    
    
 
    cHwMemory_RAM( void );

    
    virtual void lock( ) {}
    virtual void unlock() {}

  private:
    
    virtual void writeByte( DWORD addr, 
                            BYTE  data );

    
    virtual BYTE readByte( DWORD addr );

  private:
    
    BYTE *ptr;

}; 

#line 70 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Port_MCU.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Port_MCU.h"








 
class cHwPort_N : public cHwPort
{
  public:
    
    

 
    typedef enum
    {
      PA = 0, 
      PB,     
      PC,     
      PD,     
      PE,     
      PF,     
      PG,     
      PH,     
      PI,     
    } PortId;

  public:
    
    

 
    cHwPort_N( PortId portId );

    
    virtual void setMode( MTYPE mask, Mode mode );

    
    virtual void setPinMode( BYTE pinId, Mode modeIn );

    
    virtual void set( MTYPE mask )
    {
      ptr->BSRRL = mask;
    }

    
    virtual void set( MTYPE mask, MTYPE value )
    {
      ptr->BSRRL = mask &  value;
      ptr->BSRRH = mask & ~value;
    }

    
    virtual void clr( MTYPE mask )
    {
      ptr->BSRRH = mask;
    }

    
    virtual MTYPE get( void )
    {
      return( ptr->IDR );
    }

  private:
    
    GPIO_TypeDef *ptr;

}; 

#line 71 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/RTC_MCU.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/RTC.h"







 




















 
class cHwRTC
{
  public:
    
    
 
    class Properties
    {
      public:
        WORD year;   
        BYTE month;  
        BYTE day;    
        BYTE hour;   
        BYTE minute; 
        BYTE second; 
    
    };

  protected:
    
    
    
    cHwRTC( void );

  public:
    
    


 
    virtual void set( const cHwRTC::Properties &clock ) = 0;

    
    





 
    virtual BYTE get( cHwRTC::Properties &clock ) = 0;

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/RTC_MCU.h"








 
class cHwRTC_0 : public cHwRTC
{
  public:
    
    
 
    cHwRTC_0( void );

    
    virtual void set( const cHwRTC::Properties &clock );

    
    virtual BYTE get( cHwRTC::Properties &clock );

}; 

#line 72 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/SPImaster_MCU.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/SPImaster.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/SPImaster.h"



















 
class cHwSPImaster
{
  public:
    
    
 
    typedef enum
    {
      CR_250kHz  =  0, 
      CR_500kHz,       
      CR_1000kHz,      
      CR_2000kHz,      
      CR_4000kHz,      
      CR_8000kHz       
    } MODE;

    
    
 
    typedef enum
    {
      CPOL_L_CPHA_L = 0x00, 
      CPOL_L_CPHA_H = 0x01, 
      CPOL_H_CPHA_L = 0x10, 
      CPOL_H_CPHA_H = 0x11  
      
    } ClockPolPha;

    
    

 
    class Device
    {
      public:
        
        


 
        Device( cHwSPImaster &spiIn,
                cHwPort      &CS_port_In,
                BYTE          CS_pin_In )
        
        : spi( spiIn ),
          CS( CS_port_In, CS_pin_In )
        {
          CS.setMode( cHwPort::Out );
          CS.set();
        }

        
        
 
        void start()
        {
          CS.clr();
        }

        
        
 
        void stop()
        {
          CS.set();
        }
        
        
        


 
        virtual BYTE transceive( BYTE data = 0 );
        
        
        


 
        virtual void transceive( BYTE *data, WORD size );
        
        
        

 
        virtual BYTE read( void );
        
        
        


 
        virtual void read( BYTE *data, WORD size );
        
        
        

 
        virtual void write( BYTE data );

        
        

 
        virtual void write( WORD data );

        
        


 
        virtual void write( BYTE *data, WORD size );

        
        





 
        virtual void writeExt( BYTE bit9, BYTE data );

        
        



 
        virtual void writeExt( BYTE bit9, WORD data );

      public:
        
        cHwSPImaster &spi;
        cHwPort::Pin  CS;
    };

  protected:
    
    
    
    cHwSPImaster( void );
    
  public:

 
    
    
    
    
    
    
    virtual BYTE transceiveByte( BYTE data = 0 ) = 0;
    
    
    
    
    
    
    virtual BYTE transceiveByteExt( BYTE bit = 0, BYTE data = 0 ) = 0;

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/SPImaster_MCU.h"








 
class cHwSPImaster_N : public cHwSPImaster
{
  public:
    
    

 
    typedef enum
    {
      SPI_1 = 1,  
      SPI_2,      
      SPI_3       
    } SPI_ID;

  public:
    
    



 
    cHwSPImaster_N( SPI_ID       id,      
                    MODE         mode,       
                    ClockPolPha  clockPolPha );

  private:
    
    virtual BYTE transceiveByte( BYTE value = 0 );

    
    virtual BYTE transceiveByteExt( BYTE bit   = 0,
                                    BYTE value = 0 );

  private:
    
    WORD       cr1;

    SPI_TypeDef *ptr;

}; 

#line 73 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Timer_MCU.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Timer_MCU.h"








 
class cHwTimer_N : public cHwTimer
{
  public:
    
    

 
    typedef enum
    {
      TIM_1 = 1, 
      TIM_2,     
      TIM_3,     
      TIM_4,     
      TIM_5,     
      TIM_7,     
      TIM_8,     
      TIM_9,     
      TIM_10,    
      TIM_11,    
      TIM_14     
    } TimerId;

  public:
    
    


 
    cHwTimer_N( TimerId timerId, DWORD cycleTime );

    
    virtual void enablePWM( BYTE channel = 0, Mode polarity = NORMAL );

    
    virtual void setPWM( WORD value, BYTE channel = 0 );

    
    
    
    
    void isr_N( void );

  public:
    
    static cHwTimer_N *timerPtr_1;
    static cHwTimer_N *timerPtr_2;
    static cHwTimer_N *timerPtr_3;
    static cHwTimer_N *timerPtr_4;
    static cHwTimer_N *timerPtr_5;
    static cHwTimer_N *timerPtr_7;
    static cHwTimer_N *timerPtr_8;
    static cHwTimer_N *timerPtr_9;
    static cHwTimer_N *timerPtr_10;
    static cHwTimer_N *timerPtr_11;
    static cHwTimer_N *timerPtr_14;
  
  private:
    
    DWORD        tics;
    TimerId      timerId;
    TIM_TypeDef *ptr;

}; 

#line 74 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/UART_MCU.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/UART.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/UART.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/FIFO.h"







 














 
template <class T> class cFifo
{
  public:
    
    

 
    cFifo( BYTE sizeIn )
    {
      in   = 0;
      out  = 0;
      anz  = 0;
      size = sizeIn;
      if( size > 0 )
      {
        speicher = new T[size];
      }
    }

    
    



 
    BYTE isFull( void )
    {
      BYTE ret;

      cSystem::disableInterrupt();
      ret = ( anz >= size );
      cSystem::enableInterrupt();

      return( ret );
    }

    
    



 
    BYTE isEmpty( void )
    {
      BYTE ret;

      cSystem::disableInterrupt();
      ret = ( anz == 0 );
      cSystem::enableInterrupt();

      return(ret);
    }

    
    

 
    BYTE getCount( void )
    {
      BYTE ret;

      cSystem::disableInterrupt();
      ret = anz;
      cSystem::enableInterrupt();

      return(ret);
    }

    
    

 
    BYTE getSize( void )
    {
      return( size );
    }

    
    




 
    BYTE operator<<( const T &ref )
    {
      BYTE ret = 0;

      cSystem::disableInterrupt();
      if( anz < size )
      {
        speicher[in] = ref;
        in = (in < size-1) ? in+1 : 0;
        anz++;
        ret = 1;
      }
      cSystem::enableInterrupt();

      return( ret );
    }

    
    




 
    BYTE operator>>( T &ref )
    {
      BYTE ret = 0;

      cSystem::disableInterrupt();
      if( anz != 0 )
      {
        ref = speicher[out];
        out = (out < size-1) ? out+1 : 0;
        anz--;
        ret = 1;
      }
      cSystem::enableInterrupt();

      return( ret );
    }

  private:
    
    T    *speicher;
    BYTE  in;
    BYTE  out;
    BYTE  anz;
    BYTE  size;

}; 

#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/UART.h"

















 
class cHwUART
{
  public:
    
    

 
    typedef enum
    {
      BR_2400  = 0, 
      BR_4800,      
      BR_9600,      
      BR_19200,     
      BR_38400,     
      BR_57600,     
      BR_115200     
    } Mode;

  protected:
    
    
    
    
    
    cHwUART( BYTE sizeRxBuf,
             BYTE sizeTxBuf );

  public:
    
    




 
    virtual void set( BYTE data );

    
    





 
    virtual void set( const BYTE *data, BYTE length );

    
    




 
    virtual void set( const char *str );

    
    




 
    virtual bool isTxBufferFull( void );

    
    




 
    virtual bool get( BYTE *data );

  protected:
  public:
    
    
    
    
    
    virtual void isrRx( void );

    
    
    
    
    
    
    virtual void isrTx( void );

  private:
    
    
    
    
    virtual void transmitByte( BYTE data );

    
    
    
    
    virtual void setByte( BYTE data ) = 0;

    
    
    
    
    
    virtual BYTE getByte( void ) = 0;

  protected:
    
    cFifo<BYTE>  dataRxBuf; 
    cFifo<BYTE>  dataTxBuf; 

  protected:
    
    bool         txReady;   
                            

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/UART_MCU.h"








 
class cHwUART_N : public cHwUART
{
  public:
    
    

 
    typedef enum
    {
      USART_1 = 1, 
      USART_2 = 2, 
      USART_3 = 3, 
      UART_4  = 4, 
      USART_6 = 6  
    } USART_Id;

    
    typedef enum
    {
      RTS  = 0x80000000,
      CTS  = 0x40000000,
      EVEN = 0x20000000,
      ODD  = 0x10000000,
      
      BR_230400 = BR_115200+1,
      BR_460800
    } MODE;

  public:
    
    





 
    cHwUART_N( USART_Id id,
               DWORD    mode,
               BYTE     sizeRxBuf,
               BYTE     sizeTxBuf );

    
    
    
    
    void isr( void );

  private:
    
    virtual BYTE getByte( void );

    
    virtual void setByte( BYTE c );

  public:
    
    static cHwUART_N *uartPtr_1;
    static cHwUART_N *uartPtr_2;
    static cHwUART_N *uartPtr_3;
    static cHwUART_N *uartPtr_4;
    static cHwUART_N *uartPtr_6;

  protected:
    
    USART_TypeDef *ptr;

}; 

#line 75 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/USB_MCU.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.h"






































 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBdesc.h"






















 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/DataPointer.h"





 













 
class cDataPointer
{
  public:
    
    
 
    cDataPointer( void )
    {
      ptr  = 0;
      size = 0;
    }
  
    
    


 
    cDataPointer( BYTE *ptrIn, 
                  WORD  sizeIn )
    {
      ptr  = ptrIn;
      size = sizeIn;
    }

    
    

 
    template <class T> 
    cDataPointer( const T &object )
    {
      ptr  = (BYTE*)( &object );
      size = sizeof( T );
    }

    
    
 
    void operator=( const cDataPointer &dataIn )
    {
      if( dataIn.ptr && dataIn.size )
      {
        ptr  = dataIn.ptr;
        size = dataIn.size;        
      }
      else
      {
        ptr  = 0;
        size = 0;
      }
    }

    
    


 
    BYTE set( const BYTE *ptrIn, WORD sizeIn )
    {
      if( ptrIn && sizeIn )
      {
        ptr = (BYTE*)ptrIn;
        size = sizeIn;
        return(true);
      }
      return(false);
    }

    
    

 
    template <class T> void set( const T &dataIn )
    {
      ptr = (BYTE*)(&dataIn);
      size = sizeof( T );
    }
    
    
    

 
    BYTE *getPtr( void ) const
    {
      return( ptr );
    }
    
    
    

 
    template <class T> operator T *()
    {
      return( (T *)getPtr() );
    }
    
    
    



 
    BYTE isEmpty( void )
    {
     return( size?false:true );
    }

    
    

 
    WORD getSize( void )
    {
      return( size );
    }
    
    
    

 
    void shift( WORD shift )
    {
      if( shift <= size )
      {
        ptr  += shift;
        size -= shift;
      }
      else
      {
        ptr = 0;
        size = 0;
      }
    }

  private:
    
    BYTE  *ptr;
    WORD   size;

};

#line 31 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBdesc.h"











class cHwUSBinterf;
class cHwUSBendpoint;













 
__packed class cHwUSBdesc
{
  public:
    
    

 
    typedef enum
    {
      RESERVED_CLASS              = 0,   
      AUDIO_CLASS                 = 1,   
      COMMUNICATIONS_CLASS        = 2,   
      HUMAN_INTERFACE_CLASS       = 3,   
      MONITOR_CLASS               = 4,   
      PHYSICAL_INTERFACE_CLASS    = 5,   
      POWER_CLASS                 = 6,   
      PRINTER_CLASS               = 7,   
      STORAGE_CLASS               = 8,   
      HUB_CLASS                   = 9,   
      MISCELLANEOUS_CLASS         = 239, 
      VENDOR_SPECIFIC_CLASS       = 255  
    } DeviceClassType;

    
    

 
    typedef enum
    {
      CONTROL_ENDPOINT     = 0,
      ISOCHRONOUS_ENDPOINT = 1,
      BULK_ENDPOINT        = 2,
      INTERRUPT_ENDPOINT   = 3
    } EndpointType;

  protected:
    
    
    typedef enum
    {
      DEVICE_DESCRIPTOR                  =  1,
      CONFIGURATION_DESCRIPTOR           =  2,
      STRING_DESCRIPTOR                  =  3,
      INTERFACE_DESCRIPTOR               =  4,
      ENDPOINT_DESCRIPTOR                =  5,
      DEVICE_QUALIFIER_DESCRIPTOR        =  6,
      OTHER_SPEED_CONFIG_DESCRIPTOR      =  7,
      INTERFACE_POWER_DESCRIPTOR         =  8,
      OTG_DESCRIPTOR                     =  9,
      DEBUG_DESCRIPTOR                   = 10,
      INTERFACE_ASSOCIATION_DESCRIPTOR   = 11
    } DescriptorType;

  protected:
    
    __packed class cDevice
    {
      public:
        BYTE  bLength;
        BYTE  bDescriptorType;
        WORD  bcdUSB;
        BYTE  bDeviceClass;
        BYTE  bDeviceSubClass;
        BYTE  bDeviceProtocol;
        BYTE  bMaxPacketSize0;
        WORD  idVendor;
        WORD  idProduct;
        WORD  bcdDevice;
        BYTE  iManufacturer;
        BYTE  iProduct;
        BYTE  iSerialNumber;
        BYTE  bNumConfigurations;
    };

    
    __packed class cConfiguration
    {
      public:
        BYTE  bLength;
        BYTE  bDescriptorType;
        WORD  wTotalLength;
        BYTE  bNumInterfaces;
        BYTE  bConfigurationValue;
        BYTE  iConfiguration;
        BYTE  bmAttributes;
        BYTE  bMaxPower;
    };

    
    __packed class cHID
    {
      public:
        BYTE bLength;
        BYTE bDescriptorType;
        WORD bcdHID;
        BYTE bCountryCode;
        BYTE bNumDescriptors;
         
        __packed struct _HID_DESCRIPTOR_LIST {
          BYTE bDescriptorType;
          WORD wDescriptorLength;
        } DescriptorList[1]; 
    };

    
    __packed class cEndpoint
    {
      public:
        BYTE  bLength;
        BYTE  bDescriptorType;
        BYTE  bEndpointAddress;
        BYTE  bmAttributes;
        WORD  wMaxPacketSize;
        BYTE  bInterval;
    };

    
    __packed class cInterface
    {
      public:
        BYTE  bLength;
        BYTE  bDescriptorType;
        BYTE  bInterfaceNumber;
        BYTE  bAlternateSetting;
        BYTE  bNumEndpoints;
        BYTE  bInterfaceClass;
        BYTE  bInterfaceSubClass;
        BYTE  bInterfaceProtocol;
        BYTE  iInterface;
    };

    
    __packed class cReport
    {
      public:
        WORD  bLength;
    };

    
    
    __packed class cString
    {
      public:
        BYTE bLength;
        BYTE bDescriptorType;
    };

  protected:
    
    enum
    {
       DEVICE = 0,
       CONFIG,
       INTERF,
       CLASS,
       ENDPOINT,
       REPORT,
       STRING
    };

  protected:
    
    static WORD getId( BYTE type,
                       BYTE confID,
                       BYTE interfID,
                       BYTE id )
    {
        
        return(    ((id      &0x0F)<<12)
                 | ((interfID&0x0F)<< 8)
                 | ((confID  &0x0F)<< 4)
                 | ((type    &0x0F)<< 0) );
    }

    
    virtual const BYTE *getDescriptor( WORD id ) = 0;

    
    virtual void registerEndpoint( BYTE            epId,
                                   cHwUSBendpoint *endpoint ) = 0;

    
    virtual cHwUSBendpoint *getEndpoint( BYTE epId ) = 0;

    
    virtual void registerInterface( BYTE          confId,
                                    BYTE          interfId,
                                    cHwUSBinterf *interf ) = 0;

    
    virtual cHwUSBinterf *getInterface( BYTE confId,
                                        BYTE interfId ) = 0;

    
    virtual cDataPointer getDescriptorDevice( void );

    
    virtual cDataPointer getDescriptorConfig( BYTE confId );

    
    virtual cDataPointer getDescriptorInterface( BYTE confId,
                                                 BYTE interfId );

    
    virtual cDataPointer getDescriptorEndpoint( BYTE confId,
                                                BYTE interfId,
                                                BYTE epId );

    
    virtual cDataPointer getDescriptorHID( BYTE confId,
                                           BYTE interfId,
                                           BYTE hidId );

    
    virtual cDataPointer getDescriptorHIDreport( BYTE confId,
                                                 BYTE interfId,
                                                 BYTE hidId );

    
    virtual cDataPointer getDescriptorString( BYTE strId );

  public: 
    
    virtual BYTE getMaxPacketSize0( void );

  protected:
    
    virtual BYTE getConfigDeviceStatus( BYTE confId );

  
  friend class cHwUSB;
  friend class cHwUSBctrl;
  friend class cHwUSBinterf;

}; 

#line 47 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBendpoint.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBendpoint.h"


class cHwUSB;






 
class cHwUSBendpoint
{
  private:
    
    
    cHwUSBendpoint( cHwUSB       &usb,
                    cHwUSBinterf *interfIn,
                    BYTE          id,
                    WORD          maxPacketSize,
                    BYTE          attributes  );

    
    
    cHwUSBendpoint( cHwUSB       &usb,
                    BYTE          id,
                    WORD          maxPacketSize );

    
    void in( void );

    
    void inCtrl( void );

    
    void out( void );

    
    void outCtrl( void );

    
    WORD readData( void );

    
    void writeData( void );

    
  public: 
    void writeData( const cDataPointer &epDataIn );

  private:
    
    void writeDataLen( const cDataPointer &epDataIn,
                       WORD                maxLen );

    
    void writeAcknowledge( void );

    
    void readAcknowledge( void );

    
    void stall( void );

    
    void clrStall( void );

    
    void clrFeature( void );

    
    void setConfiguration( void );

  private:
    
    cHwUSB        &usb;
    cHwUSBinterf  *interf;
    cDataPointer   epData;
    BYTE           id;
    WORD           maxPacketSize;
    BYTE           attributes;

  
  friend class cHwUSB;
  friend class cHwUSBctrl;
  friend class cHwUSBinterf;

}; 

#line 48 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBctrl.h"







 










 
class cHwUSBctrl
{
  private:
    
    
    __packed class Setup
    {
      private:
        
        BYTE bmRequestType;
        BYTE bRequest;
        WORD wValue;
        WORD wIndex;
        WORD wLength;
      
      private:
        
        BYTE reqRecipient() { return( (bmRequestType     ) & 0x1F ); }
        BYTE reqType()      { return( (bmRequestType >> 5) & 0x03 ); }
        BYTE reqDir()       { return( (bmRequestType >> 7) & 0x01 ); }
        BYTE request()      { return(  bRequest                   ); }
        WORD value()        { return(  wValue                     ); }
        BYTE valueLow()     { return(  wValue & 0xFF              ); }
        BYTE valueHigh()    { return(  wValue >> 8                ); }
        BYTE index()        { return(  wIndex                     ); }
        BYTE indexLow()     { return(  wIndex & 0xFF              ); }
        BYTE indexHigh()    { return(  wIndex >> 8                ); }
        WORD length()       { return(  wLength                    ); }

      
      friend class cHwUSBctrl;
        
    }; 
    

  private:
    
    enum
    {
      REQ_RECIPIENT_DEVICE    = 0,
      REQ_RECIPIENT_INTERFACE = 1,
      REQ_RECIPIENT_ENDPOINT  = 2,
      REQ_RECIPIENT_OTHER     = 3
    };
    
    
    enum
    {
      REQ_DIR_HOST_TO_DEVICE = 0,
      REQ_DIR_DEVICE_TO_HOST = 1
    };

    
    enum
    {
      REQ_TYPE_STANDARD  = 0,
      REQ_TYPE_CLASS     = 1,
      REQ_TYPE_VENDOR    = 2,
      REQ_TYPE_RESERVED  = 3
    };

    
    enum
    {
      REQUEST_GET_STATUS        =  0,
      REQUEST_CLR_FEATURE       =  1,
      REQUEST_RESERVED_0        =  2,
      REQUEST_SET_FEATURE       =  3,
      REQUEST_RESERVED_1        =  4,
      REQUEST_SET_ADDRESS       =  5,
      REQUEST_GET_DESCRIPTOR    =  6,
      REQUEST_SET_DESCRIPTOR    =  7,
      REQUEST_GET_CONFIGURATION =  8,
      REQUEST_SET_CONFIGURATION =  9,
      REQUEST_GET_INTERFACE     = 10,
      REQUEST_SET_INTERFACE     = 11,
      REQUEST_SYNC_FRAME        = 12 
    };

    
    enum 
    {
      FEATURE_BIT_ENDPOINT_STALL = 0x00,
      FEATURE_BIT_REMOTE_WAKEUP  = 0x01
    };

  private:
    
    cHwUSBctrl( cHwUSB &usbPtr );

    
    virtual void setup( void );

    
    virtual void out( void );

    
    virtual void in( void );

  private:
    
    virtual void Stall( void );

  private:
    
    
    void ReqDevice   ( void );
    void ReqInterface( void );
    void ReqEndpoint ( void );
    
    
    
    void ReqDeviceStd_GetStatus        ( void );
    void ReqDeviceStd_ClrFeature       ( void );
    void ReqDeviceStd_SetFeature       ( void );
    void ReqDeviceStd_SetAddress       ( void );
    void ReqDeviceStd_GetDescriptor    ( void );    
    void ReqDeviceStd_GetConfiguration ( void );
    void ReqDeviceStd_SetConfiguration ( void );
    
    
    
    void ReqInterfaceStd_GetStatus     ( void );
    void ReqInterfaceStd_GetDescriptor ( void );
    void ReqInterfaceStd_GetInterface  ( void );
    void ReqInterfaceStd_SetInterface  ( void );
    
    void ReqInterfaceClass( void );

    
    
    void ReqEndpointStd_ClrFeature ( void );
    void ReqEndpointStd_SetFeature ( void );
    
   private:
     
     cHwUSB         &usb;
     cHwUSBendpoint  epIN;
     cHwUSBendpoint  epOUT;
     Setup           setupData;
     WORD            DeviceStatus;
     BYTE            Configuration;

   
   friend class cHwUSB;
   
}; 

#line 49 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBinterf.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBinterf.h"


class cHwUSB;






 
class cHwUSBinterf
{
  public:
    
    




 
    cHwUSBinterf( cHwUSB &usb, 
                  BYTE    configId, 
                  BYTE    interfId );

  protected:
    
    









 
    virtual bool transmit( BYTE          epId, 
                           cDataPointer &epdata ) = 0;

    
    










 
    virtual bool request( BYTE          epId, 
                          cDataPointer &epdata ) = 0;

    
    












 
    virtual bool requestCtrlIN( cDataPointer &epdata, 
                                BYTE          request,
                                WORD          value, 
                                WORD          length ) = 0;

    
    













 
    virtual bool requestCtrlOUT( cDataPointer &epdata, 
                                 BYTE          request,
                                 WORD          value, 
                                 WORD          length ) = 0;

    
    










 
    virtual bool receive( BYTE epId, WORD len )  = 0;

  private:
    
    virtual cDataPointer GetDescriptor( WORD value ) 
    {
      return( cDataPointer() );
    }

    
    virtual void clrFeature( void )
    {
    }

    
    virtual void setFeature( void )
    {
    }

  protected:
    
    cHwUSB         &usb;
    cHwUSBendpoint *epIN;
    cHwUSBendpoint *epOUT;
    BYTE            configId;
    BYTE            interfId;
  
  
  friend class cHwUSBendpoint;
  friend class cHwUSBctrl;

}; 

#line 50 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBhardware.h"







 












 
class cHwUSB
{
  protected:
    
    cHwUSB( cHwUSBdesc &desc );
    
    
    virtual void eventHandler( BYTE EPnum, 
                               BYTE isSetup );
  public:  
    
    
 
    virtual void start( void ) = 0;

  protected:
    
    virtual void reset( void ) = 0;

    
    virtual void configure( BYTE flag ) = 0;

    
    virtual void setAddress( BYTE addr ) = 0;
    
    
    virtual void configEP( BYTE epAddr,
                           WORD epMaxPacketSize, 
                           BYTE epType          ) = 0;

    
    virtual void setStallEP( BYTE epAddr ) = 0;

    
    virtual void clrStallEP( BYTE epAddr ) = 0;

    
    virtual WORD readEP( BYTE  epAddr, 
                         BYTE *dataPtr, 
                         WORD  len     ) = 0;

    
    virtual WORD writeEP( BYTE  epAddr, 
                          BYTE *dataPtr, 
                          WORD  len     ) = 0;

  protected:
    
    cHwUSBdesc   &desc;   
    cHwUSBctrl    epCtrl;

  
  friend class cHwUSBctrl;
  friend class cHwUSBendpoint;
  friend class cHwUSBinterf;

}; 

#line 51 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.h"

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/USB_MCU.h"









 
class cHwUSB_0 : public cHwUSB
{
  private:  
    
    class Buffer
    {
      public:
        
        BYTE data[128];
        BYTE size;
        BYTE flag;
        BYTE maxpacket;
      
        
        Buffer( void )
        {
          size      = 0;
          flag      = false;
          maxpacket = 0;
        }
    };
    
  private:
    
    class EndpointIN
    {
      public:
        
        EndpointIN( void );
        
        
        void  init    ( BYTE numIn );
        void  config  ( WORD epMPS, BYTE epType = 0 ); 
        void  flush   ( void );
        void  reset   ( void );
        void  start   ( void );
        void  setStall( void );
        void  clrStall( void );
        
        
        WORD  write      ( BYTE *dataPtr, WORD len );
        void  writeToFifo( void );
        void  transmit   ( bool flag );
        void  transmitZLP( void );
        
        
        DWORD getInterrupt( void );
        void  clrInterrupt( DWORD interruptID );

      private:
        
        BYTE                        num;
        Buffer                      txBuf;
        USB_OTG_INEndpointTypeDef  *inep;
        volatile DWORD                 *fifo;
        
    }; 
    
  
  private:
    
    class EndpointOUT
    {
      public:
        EndpointOUT( void );
        
        
        void init    ( BYTE numIn );
        void config  ( WORD epMPS, BYTE epType = 0 ); 
        void flush   ( void );
        void reset   ( void );
        void start   ( void );
        void setStall( void );
        void clrStall( void );
      
        
        WORD read        ( BYTE *dataPtr, WORD len );
        void readFromFifo( WORD  len);
        void receive     ( void );
        void receiveZLP  ( void );

        
        DWORD getInterrupt( void );
        void  clrInterrupt( DWORD interruptID );
        
      private:
        
        BYTE                        num;
        Buffer                      rxBuf;
        USB_OTG_OUTEndpointTypeDef *outep;
        volatile DWORD                 *fifo;
        
    }; 
    

  public:
    
    

 
    cHwUSB_0( cHwUSBdesc &desc );

    
    
 
    virtual void start( void );

    
    
    void isr( void );

  private:
    
    
    virtual void reset( void );

    
    virtual void configure( BYTE flag );

    
    virtual void setAddress( BYTE adr = 0 );

    
    virtual void configEP( BYTE epAddr,
                           WORD epMaxPacketSize,
                           BYTE epType );

    
    virtual void setStallEP( BYTE epAddr );

    
    virtual void clrStallEP( BYTE epAddr );

    
    virtual WORD readEP( BYTE  epAddr,
                         BYTE *dataPtr,
                         WORD  len );

    
    virtual WORD writeEP( BYTE  epAddr,
                          BYTE *dataPtr,
                          WORD  len );

  private:
    
    BYTE  CoreReset         ( void );
    DWORD getInInterrupt    ( void );
    DWORD getOutInterrupt   ( void );
    BYTE  isInterruptPending( DWORD interuptID );
    void  clrInterrupt      ( DWORD interuptID );

  public:
    
    static cHwUSB_0 *usbPtr;

  private:
    
    static const WORD NUM_OF_ENDPOINTS = 4;
    static const WORD MAX_EP0_SIZE     = 64;

    cHwUSB_0::EndpointIN  epIN [ NUM_OF_ENDPOINTS ];
    cHwUSB_0::EndpointOUT epOUT[ NUM_OF_ENDPOINTS ];

}; 

#line 76 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.h"

#line 83 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.h"


#line 108 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.h"


#line 20 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX521.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX521.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX521.h"










 
class cHwDAC_MAX521 : public cHwDAC
{
  public:
    
    


 
    cHwDAC_MAX521( cHwI2Cmaster &i2c, 
                   BYTE          hwAddr );

    
    virtual void set( WORD value, 
                      BYTE ch    );

    
    virtual void enable( BYTE ch = 0 ) {   }

  private:
    
    cHwI2Cmaster::Device i2c;

    
    static const BYTE baseAdr = 0x50;

}; 

#line 25 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX5308.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX5308.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX5308.h"










 
class cHwDAC_MAX5308 : public cHwDAC
{
  public:
    
    

 
  cHwDAC_MAX5308( cHwSPImaster::Device &spi );

    
    virtual void set( WORD value, 
                      BYTE ch    );

    
    virtual void enable( BYTE ch = 0 ) {   }

  private:
    
    cHwSPImaster::Device  spi;


}; 

#line 26 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4441.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4441.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4441.h"










 
class cHwDAC_MCP4441 : public cHwDAC
{
  public:
    
    


 
    cHwDAC_MCP4441( cHwI2Cmaster &i2c, 
                    BYTE          hwAddr );

    
    virtual void set( WORD value, 
                      BYTE ch );

    
    virtual void enable( BYTE ch = 0 ) {   }

  private:
    
    cHwI2Cmaster::Device i2c;

    
    static const BYTE baseAdr = 0x58;

}; 

#line 27 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4922.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4922.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4922.h"








 
class cHwDAC_MCP4922 : public cHwDAC
{
  public:
    
    




 
  cHwDAC_MCP4922( cHwSPImaster::Device &spi,
                    BYTE                gain = 0 );

    
    virtual void set( WORD value, 
                      BYTE ch );

    
    virtual void enable( BYTE ch = 0 ) {   }

  private:
    
    cHwSPImaster::Device  spi;

    BYTE ga;

}; 

#line 28 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_SPFD5408Bspi.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_SPFD5408Bspi.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_SPFD5408Bspi.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Display.h"







 















 
class cHwDisplay
{
  protected:
    
    
    
    cHwDisplay( BYTE numberOfLinesIn,
                BYTE numberOfColumnsIn );

  public:
    
    
 
    virtual void clear( void ) = 0;

    
    


 
    virtual void gotoTextPos( BYTE line, 
                              BYTE column ) = 0;

    
    


 
    virtual void putChar( char c ) = 0;

    
    

 
    virtual BYTE getNumberOfLines( void );

    
    

 
    virtual BYTE getNumberOfColumns( void );

  protected:
    
    WORD numberOfLines;
    WORD numberOfColumns;

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_SPFD5408Bspi.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/DisplayGraphic.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/DisplayGraphic.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/DisplayFont.h"





 






class cHwDisplayFontProperties;











 
class cHwDisplayFont
{
  public:
    
    



  
     cHwDisplayFont( void ) {}

    cHwDisplayFont( const cHwDisplayFontProperties *prop, 
                     const BYTE                     *data );
     
    
    

 
    BYTE getCharWidth( void ) const;
      
    
    

 
    BYTE getCharHeight( void ) const;
      
    
    


 
    void setChar( BYTE c );
      
    
    







 
    BYTE getPixel( BYTE x, 
                   BYTE y );
    
  private:
    
    const cHwDisplayFontProperties *prop;
    const BYTE                     *data;
    const BYTE                     *selected;

}; 






 
class cHwDisplayFontProperties
{
  public:
    
    BYTE firstId;      
    BYTE lastId;       
    BYTE bytePerChar;  
    BYTE charWidth;    
    BYTE charHeight;   

}; 








 
template <WORD NUM_OF_CHAR, BYTE BYTE_PER_CHAR> class cHwDisplayFontData
{
  public:
    
    cHwDisplayFontProperties prop;
    BYTE                     data[NUM_OF_CHAR  ]
                                 [BYTE_PER_CHAR];  

    
    

 
    operator cHwDisplayFont( void ) const
    {
      return( cHwDisplayFont( &prop, (BYTE*)data ) );
    } 
      
}; 

#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/DisplayGraphic.h"
























 





class cHwDisplayGraphic : public cHwDisplay
{
  public:
    
    
 
    
    
    
    
    

    
 
    typedef enum
    {
      
      Black     = ( ((0 >> 3) << 0) | ((0 >> 2) << 5) | ((0 >> 3) << 11) ),  
      Navy      = ( ((96 >> 3) << 0) | ((48 >> 2) << 5) | ((0 >> 3) << 11) ),  
      DarkGreen = ( ((0 >> 3) << 0) | ((128 >> 2) << 5) | ((0 >> 3) << 11) ),  
      DarkCyan  = ( ((128 >> 3) << 0) | ((128 >> 2) << 5) | ((0 >> 3) << 11) ),  
      Maroon    = ( ((0 >> 3) << 0) | ((0 >> 2) << 5) | ((128 >> 3) << 11) ),  
      Purple    = ( ((128 >> 3) << 0) | ((0 >> 2) << 5) | ((128 >> 3) << 11) ),  
      Olive     = ( ((0 >> 3) << 0) | ((196 >> 2) << 5) | ((128 >> 3) << 11) ),  
      Grey      = ( ((192 >> 3) << 0) | ((192 >> 2) << 5) | ((192 >> 3) << 11) ),  
      DarkGrey  = ( ((128 >> 3) << 0) | ((128 >> 2) << 5) | ((128 >> 3) << 11) ),  
      Blue      = ( ((255 >> 3) << 0) | ((0 >> 2) << 5) | ((0 >> 3) << 11) ),  
      Green     = ( ((0 >> 3) << 0) | ((255 >> 2) << 5) | ((0 >> 3) << 11) ),  
      Cyan      = ( ((255 >> 3) << 0) | ((255 >> 2) << 5) | ((0 >> 3) << 11) ),  
      Red       = ( ((0 >> 3) << 0) | ((0 >> 2) << 5) | ((255 >> 3) << 11) ),  
      Magenta   = ( ((255 >> 3) << 0) | ((0 >> 2) << 5) | ((255 >> 3) << 11) ),  
      Yellow    = ( ((0 >> 3) << 0) | ((255 >> 2) << 5) | ((255 >> 3) << 11) ),  
      White     = ( ((255 >> 3) << 0) | ((255 >> 2) << 5) | ((255 >> 3) << 11) ),   
      DarkBlue  = ( ((192 >> 3) << 0) | ((0 >> 2) << 5) | ((0 >> 3) << 11) ),  

    } colorPredefined;

  

  protected:
    
    
    
    
    
    cHwDisplayGraphic( cHwDisplayFont font,
                       BYTE           zoom = 1 );

  public:
    
    


 
    virtual void setFont( cHwDisplayFont font,
                          BYTE           zoom = 1 );

    
    

 
    virtual void setZoom(BYTE zoom = 1);

    
    

 
    virtual void setBackColor( WORD color );

    
    


 
    virtual void setPaintColor( WORD color );

    
    

 
    virtual void setTextColor( WORD color );

    
    


 
    virtual void gotoPixelPos(WORD x,
                              WORD y);

    
    


 
    virtual void gotoTextPos( BYTE line,
                              BYTE colum );

    
    


 
    virtual void putChar( char c );

    
    


 
    virtual void putPixel( WORD x,
                           WORD y );

    
    




 
    virtual void putRectangle( WORD x,
                               WORD y,
                               WORD w,
                               WORD h );

    
    






 
    virtual void putBitmap( WORD        x,
                            WORD        y,
                            WORD        w,
                            WORD        h,
                            const WORD *bitmap );
    
    
    
 
    virtual cHwDisplayFont getDefaultFont( void )
    {
      return( font );
    }

  private:
    
    
    
    
    
    
    
    
    
    virtual void setArea( WORD x,
                          WORD y,
                          WORD w,
                          WORD h ) = 0;

    
    
    
    
    
    
    virtual void setPixel( WORD color,
                           WORD x,
                           WORD y      ) = 0;

    
    
    
    
    
    
    virtual void setPixel( WORD color ) = 0;

  protected:
    
    WORD xPos;
    WORD yPos;

    
    cHwDisplayFont font;
    BYTE           zoom;

    
    WORD BackColor;
    WORD PaintColor;
    WORD TextColor;

}; 

#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_SPFD5408Bspi.h"










 
class cHwDisp_SPFD5408Bspi : public cHwDisplayGraphic
{
  public:

    
    




 
    cHwDisp_SPFD5408Bspi( cHwSPImaster::Device  &spi, 
                          cHwPort::Pin          &pinBL,
                          cHwDisplayFont         font, 
                          BYTE                   zoom = 1 );
   
    
    virtual void clear( void );

    
    virtual void setArea( WORD x, 
                          WORD y,
                          WORD w,
                          WORD h );

   
    virtual void setPixel( WORD color,
                           WORD x, 
                           WORD y );

    
    virtual void setPixel( WORD color );

  private:
    
    
    void init( void );
      
    
    
    void maxWindow( void );
    
    
    
    
    void writeCmd( WORD cmd );

    
    
    
    void writeDat( WORD dat );

    
    
    
    
    void writeReg( BYTE reg, 
                   WORD val );

  private:
     
    cHwSPImaster::Device  spi;

    BYTE          isMaxWindow;

    
    
    
    
    static const WORD WIDTH  = 320;
    static const WORD HEIGHT = 240;
   
}; 

#line 29 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Framebuffer.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Framebuffer.h"










 
class cHwDisp_Framebuffer : public cHwDisplayGraphic
{
  public:
     
		uint8_t *buffer;
	
    
    
    cHwDisp_Framebuffer( uint8_t *framebuffer, cHwDisplayFont font, BYTE zoom = 1 );

    virtual void clear( void );

    
    virtual void setArea( WORD x, 
                          WORD y,
                          WORD w,
                          WORD h );

   
    virtual void setPixel( WORD color,
                           WORD x, 
                           WORD y );

    
    virtual void setPixel( WORD color );
		
		virtual void resetArea();

  private:
		
		WORD pX;
		WORD pY;
		
		
		WORD pAX;
		WORD pAY;
		WORD pAW;
		WORD pAH;
    
    
    
    
    static const WORD WIDTH  = 320;
    static const WORD HEIGHT = 200;
	       
}; 

#line 30 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204.h"










 
class cHwDisp_DIP204 : public cHwDisplay
{
  public:
    
    

 
    cHwDisp_DIP204( cHwPort &port );

    
    virtual void clear( void );

    
    virtual void gotoTextPos( BYTE lineIn, 
                              BYTE columIn );

    
    virtual void putChar( char c );

  private:
    
    void init( void );

    
    void waitBusy( void );

    
    void writeCmd( BYTE cmd );

    
    void writeDat( BYTE dat ); 

  private:
    
    cHwPort &port;
    BYTE     line;
    BYTE     colum;

    
    static const WORD NUM_OF_LINE  =  4;
    static const WORD NUM_OF_COLUM = 20;

    
    
    static const BYTE DIP204_RES = ((BYTE)(1<<4)); 
    static const BYTE DIP204_EN  = ((BYTE)(1<<5)); 
    static const BYTE DIP204_RW  = ((BYTE)(1<<6)); 
    static const BYTE DIP204_RS  = ((BYTE)(1<<7)); 


            
}; 

#line 31 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204spi.h"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204spi.h"




#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204spi.h"








 
class cHwDisp_DIP204spi : public cHwDisplay
{
  public:
    
    

 
    cHwDisp_DIP204spi( cHwSPImaster::Device &spi );

    
    virtual void clear( void );

    
    virtual void gotoTextPos( BYTE lineIn, 
                              BYTE columnIn );

    
    virtual void putChar( char c );

  private:
    
    void init( void );

    
    void waitBusy( void );

    
    void writeCmd( BYTE cmd );

    
    void writeDat( BYTE dat ); 

  private:
    
    cHwSPImaster::Device &spi;
 
    BYTE          line;
    BYTE          column;

    
    static const WORD NUM_OF_LINE   =  4;
    static const WORD NUM_OF_COLUMN = 20;

}; 

#line 32 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_ILI9341spi.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_ILI9341spi.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_ILI9341spi.h"
#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_ILI9341spi.h"










 
class cHwDisp_ILI9341spi : public cHwDisplayGraphic
{
  public:

    
    





 
  cHwDisp_ILI9341spi( cHwSPImaster::Device &spi, 
                        cHwPort::Pin       &pinBL,
                        cHwDisplayFont      font, 
                        BYTE                zoom = 1 );
   
    
    virtual void clear( void );

    
    virtual void setArea( WORD x, 
                          WORD y,
                          WORD w,
                          WORD h );

   
    virtual void setPixel( WORD color,
                           WORD x, 
                           WORD y );

    
    virtual void setPixel( WORD color );

  private:
    
    
    void init( void );
      
    
    
    
    void writeCmd( BYTE cmd );

    
    
    
    void writeDat( BYTE dat );

    
    
    
    void writeDatWord( WORD dat );

  private:
     
    cHwSPImaster::Device  spi;

    
    
    
    
    static const WORD WIDTH  = 320;
    static const WORD HEIGHT = 240;
   
}; 

#line 33 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Terminal.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Terminal.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Terminal.h"










 
class cHwDisp_Terminal : public cHwDisplay
{
  public:
    
    

 
    cHwDisp_Terminal( cHwUART &uart );

    
    virtual void clear( void );

    
    virtual void gotoTextPos( BYTE line, 
                              BYTE colum );
	
    
    virtual void putChar( char c );

  private:
    
    void sendESC( const char *seq );

    
    cHwUART &uart;
    BYTE     line;
    BYTE     colum;

  public:
    
    static const WORD NUM_OF_LINE  = 10;
    static const WORD NUM_OF_COLUM = 20;
	       
}; 

#line 34 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/EEPROM_24C256.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/EEPROM_24C256.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/EEPROM_24C256.h"








 
class cHwEEPROM_24C256 : public cHwMemory
{
  public:
    
    


 
    cHwEEPROM_24C256( cHwI2Cmaster &i2c,
                      BYTE          hwAddr );

  private:
    
    
 
    virtual void unlock( void );
    
    
    
 
    virtual void lock( void );
    
    
    virtual void writeByte( DWORD addr,
                            BYTE  data );

    
    virtual BYTE readByte( DWORD addr );

  private:
public:
    
    cHwI2Cmaster::Device i2c;

    
    static const BYTE baseAdr = 0xA0;
    static const BYTE maskAdr = 0x03;

}; 

#line 35 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.h"






#line 8 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.h"


class cHwEthernet_Enc28j60 : public cHwEthernet
{
	public:
	  cHwEthernet_Enc28j60( const cNetAddr<6>  &addrPhy, cHwSPImaster::Device &spi );



public:


    virtual void create( const cNetAddr<6> destAddr, const WORD type );


    virtual void     PacketSend   (BYTE* packet, WORD len);
		virtual bool     PacketReceive();

    virtual WORD getType(  );


  private:
		void Init(const cNetAddr<6>  &addrPhy);
    void InitPhy (void);

	  BYTE ReadOp(BYTE op, BYTE address);
		void WriteOp(BYTE op, BYTE address, BYTE data);
		void ReadBuffer(WORD len, BYTE* data);
		void WriteBuffer(WORD len, BYTE* data);
		void SetBank(BYTE address);
		BYTE Read(BYTE address);
		void WriteByte(BYTE address, BYTE data);
		void WriteWord(BYTE address, WORD data);
		void PhyWrite(BYTE address, WORD data);
		void clkout(BYTE clk);
		BYTE getrev(void);



		private:
      cHwSPImaster::Device &spi;
    
    const cNetAddr<6>  &addrPhy;

    BYTE  Bank;
    WORD NextPacketPtr;
  public:


};


#line 36 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_PCF8574.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_PCF8574.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_PCF8574.h"
#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_PCF8574.h"















 
class cHwPort_PCF8574 : public cHwPort , cList::Item
{
  public:
    
    



 
    cHwPort_PCF8574( cHwI2Cmaster &i2c, 
                     BYTE           hwAddr,
                     cHwTimer      *tPtr = 0 );

    
    
 
    virtual void update( void );

    
    virtual void setDir( MTYPE mask );

    
    virtual void clrDir( MTYPE mask );

    
    virtual void set( MTYPE mask );

    
    virtual void set( MTYPE mask, MTYPE value );

    
    virtual void clr( MTYPE mask );

    
    virtual MTYPE get( void );

  private:
    
    cHwI2Cmaster::Device  i2c;
    cHwTimer             *tPtr;

    MTYPE         valueIn;
    MTYPE         valueOut;
    MTYPE         dir;

    
    static const BYTE baseAdr = 0x40;
    static const BYTE maskAdr = 0x07;

}; 

#line 37 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_Terminal.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_Terminal.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_Terminal.h"
#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_Terminal.h"




























 
class cHwPort_Terminal : public cHwPort , cList::Item
{
  public:

    
 
    typedef enum
    {
      LEFT  = 0x01, 
      RIGHT = 0x02, 
      UP    = 0x04, 
      DOWN  = 0x08, 
      ENTER = 0x10, 
      PLUS  = 0x20, 
      MINUS = 0x40, 
      BLANK = 0x80, 

      
      NUM_1 = 0x80, 
      NUM_2 = 0x40, 
      NUM_3 = 0x20, 
      NUM_4 = 0x10, 
      NUM_5 = 0x08, 
      NUM_6 = 0x04, 
      NUM_7 = 0x02, 
      NUM_8 = 0x01, 

    } KEY_BIT;

    
  	




 
    cHwPort_Terminal( cHwUART  &uart,
                      MTYPE     lock,
                      cHwTimer *tPtr = 0 );

    
    
 
    virtual void update();

    
    virtual void setMode( MTYPE mask, Mode mode );

    
    virtual void setPinMode( BYTE pinId, Mode modeIn );

    
    virtual void set( MTYPE mask );

    
    virtual void set( MTYPE mask, MTYPE value );

    
    virtual void clr( MTYPE mask );

    
    virtual MTYPE get( void );

  private:
    
    cHwUART  &uart;
    cHwTimer *tPtr;

    MTYPE latch;
    MTYPE out;
    MTYPE dir;
    MTYPE lock;
    MTYPE last;
    BYTE  escape;

}; 

#line 38 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RAM_PCF8583.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RAM_PCF8583.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RAM_PCF8583.h"








 
class cHwRAM_PCF8583 : public cHwMemory
{
  public:
    
    


 
    cHwRAM_PCF8583( cHwI2Cmaster &i2c,
                    BYTE          hwAddr );

  private:
    
    virtual void writeByte( DWORD addr,
                            BYTE  data );

    
    virtual BYTE readByte( DWORD addr );

  private:
    
  cHwI2Cmaster::Device i2c;

    
    static const BYTE baseAdr = 0xA0;
    static const BYTE maskAdr = 0x01;

}; 

#line 39 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RS485_MAX48x.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RS485_MAX48x.h"








 
template <class T> class cHwRS485_MAX48x : public T
{

  public:
    
    
 
    cHwRS485_MAX48x( cHwPort::Pin &pinIn
                   )

  : pin( pinIn )

    {
      pin.setMode( cHwPort::Out );
      pin.clr   ();
    }

  private:
    
    
    
    virtual void isrTx( void )
    {
      if( T::txReady )
      {
        pin.set();
      }

      T::isrTx();

      if( T::txReady )
      {
        pin.clr();
      }
    }

  private:
    
    cHwPort::Pin &pin;

}; 

#line 40 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RTC_PCF8583.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RTC_PCF8583.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RTC_PCF8583.h"








 
class cHwRTC_PCF8583 : public cHwRTC
{
  public:
    
    


 
    cHwRTC_PCF8583( cHwI2Cmaster &i2c, BYTE hwAddr );

    
    virtual void set( const cHwRTC::Properties &clock );

    
    virtual BYTE get( cHwRTC::Properties &clock );

  private:
    
    
    
    BYTE BCD_2_Dual( BYTE bcd );

    
    
    
    BYTE Dual_2_BCD( BYTE dual );

    
  cHwI2Cmaster::Device i2c;

    static const BYTE baseAdr = 0xA0;
    static const BYTE maskAdr = 0x01;

}; 

#line 41 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_ADS7846.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_ADS7846.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Touch.h"





 




















 
class cHwTouch
{
  protected:
    
    
    
    
    cHwTouch( WORD width, 
              WORD height );

  public:
    
    

 
    virtual void update( void ) = 0;

    
    



 
    virtual WORD getPosX( void );

    
    



 
    virtual WORD getPosY( void );

    
    



 
    virtual BYTE isTouched( void );

  protected:
    
    WORD xPos;
    WORD yPos;
    BYTE isTouchedFlag;

    WORD width;
    WORD height;

}; 

#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_ADS7846.h"








 
class cHwTouch_ADS7846 : public cHwTouch
{
  public:
    
    




 
  cHwTouch_ADS7846( cHwSPImaster::Device &spi, 
                      WORD                width,
                      WORD                height );

    
    

 
    virtual void update( void );

  private:
    
    
    
    int readData( BYTE ch );

  private:
    
    cHwSPImaster::Device  spi;


}; 

#line 42 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_STMPE811i2c.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_STMPE811i2c.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_STMPE811i2c.h"








 
class cHwTouch_STMPE811i2c : public cHwTouch
{
  public:
    
    






 
    cHwTouch_STMPE811i2c( cHwI2Cmaster &i2c, 
                          BYTE          addr, 
                          WORD          width, 
                          WORD          height );

    
    

 
    virtual void update( void );

  private:
    
  cHwI2Cmaster::Device i2c;

}; 

#line 43 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/UART_IP.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"









 








#line 20 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetApp.h"



#line 5 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetApp.h"

class cNetApplication : public cList::Item
{
  public:
    cNetApplication( void )
    {
    }

    virtual void process( void ) = 0;

    virtual void update( void ) = 0;

    virtual void timeout( void ) = 0;
};

#line 21 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetTransport.h"






class cNetTransport
{
  public:

    
    
    
  class Socket : public cList::Item
    {
      public:
        Socket( cNetTransport   &trans,
                cNetApplication &app,
                cNetAddr<4>      inAddrIn,
                WORD             portIn,
                WORD             updateTime
              );

        virtual void open( cNetAddr<4> addr,
                           WORD port
                         ) = 0;

        virtual void openDefault( void )
        {
          open( remoteAddr, remotePort );
        }

        virtual void close( void ) = 0;

        virtual BYTE isConnected( void ) = 0;

        virtual BYTE isReady( void ) = 0;

        virtual cNetAddr<4> getRemoteIP( void );

        virtual void clear( void ) = 0;

        virtual BYTE *getDataPtr() = 0;

        virtual void setDataLength(WORD len) = 0;

        virtual void send( void ) = 0;

        virtual BYTE get( char *c ) = 0;

      private:
        virtual void fillBuffer( const char c ) = 0;



        
        virtual void update( void )
        {
        }

      public:
        virtual void fill( const char c )
        {
          fillBuffer( c );
        }

        virtual void fill( const char *str )
        {
          fill( str, strlen(str) );
        }

        virtual void fill( const char *buf,
                           WORD        len
                         )
        {
          for( WORD i = 0; i< len; i++ )
          {
            fill( buf[i] );
          }
        }

        virtual void setTimeout( WORD timeSec, WORD timeMilli = 0 )
        {
          
          timeOutTic = (DWORD)100*timeSec + timeMilli/10;
        }

            virtual BYTE process( void )= 0;
          
            virtual void timeout( void ) = 0;


      protected:
        enum
        {
          STATE_WAITING = 0,
          STATE_OPEN_WAIT_ARP,
          STATE_CONNECTED,
        };

      protected:
        cNetAddr<6> addrPhy;
        cNetAddr<4> addr;
        cNetWORD    myPort;
        cNetAddr<4> remoteAddr;
        cNetWORD    remotePort;
        DWORD       timeOutTic;
        WORD        updateTic;
        WORD        updateTime;
        BYTE        state;
        
        

        cNetApplication &app;

      friend class cNetTransport;

    }; 



  protected:
    cNetTransport(  );

  public:

 

   virtual void process( void );

    virtual void update( void );

    virtual void timeout( void );

    virtual cNetAddr<4> &getAddr( void ) = 0;

    virtual const cNetAddr<6> &getAddrPhy( void ) = 0;

  public:
   
  protected:
  public:

   

  public:
    cList  appList;

}; 

#line 22 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"



#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetARP.h"



#line 5 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetARP.h"

#pragma pack(1)

class cNetARP_Header
{
  public:                         
    cNetWORD    hardwareType;     
    cNetWORD    protocolType;     
    cNetBYTE    physicalAddrLen;  
    cNetBYTE    protocolAddrLen;  
    cNetWORD    operationCode;    
    cNetAddr<6> sourceAddrPhy;    
    cNetAddr<4> sourceAddr;       
    cNetAddr<6> destAddrPhy;      
    cNetAddr<4> destAddr;         
                                  
};

class cNetARP_Msg
{
  public:                    
    cHwEthernet_Header eth;  
    cNetARP_Header     arp;  
                             
};

#pragma pack(8)

class cNetTCP;
class cNetUDP;




class cNetARP
{
  public:
    cNetARP( cHwEthernet &eth,
             
  cNetAddr<4> &addr
           );

    void process( void );
  
    void request( cNetAddr<4> &addr 
                );
  
  void setTCP( cNetTCP *tcp 
               );

    void setUDP( cNetUDP *udp 
               );

  private:
    enum 
    {
      OPCODE_REQUEST = 0x0001,
      OPCODE_REPLY   = 0x0002
    };

  private:
    cHwEthernet  &eth;
    cNetAddr<4>  &addr;
    cNetARP_Msg  &msg;
    cNetTCP      *tcp;
    cNetUDP      *udp;

}; 

#line 26 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetDHCP.h"





#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetUDP.h"



#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetIP.h"




#line 6 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetIP.h"


#pragma pack(1)

class cNetIP_Header
{
  public:                             
    cNetBYTE    version_IHL;          
    cNetBYTE    TypeOfService;        
    cNetWORD    packetLength;         
    cNetWORD    identification;       
    cNetWORD    flags_fragmentOffset; 
    cNetBYTE    TTL;                  
    cNetBYTE    protocol;             
    cNetWORD    headerChecksum;       
    cNetAddr<4> sourceAddr;           
    cNetAddr<4> destAddr;             
    
                                      

    
    BYTE getFlags()
    {
      return( flags_fragmentOffset.data & 0x00FF );
    }
    
    void setFlags( BYTE flags )
    {
      flags_fragmentOffset.data = (flags_fragmentOffset.data & 0xFF00) | flags;
    }

    BYTE getFragmentOffset()
    {
      return( (flags_fragmentOffset.data & 0xFF00) >> 8 );
    }

    void setFragmentOffset( BYTE offset )
    {
      flags_fragmentOffset.data = (flags_fragmentOffset.data & 0x00FF) | ((WORD)offset<<8);
    }
};


class cNetIP_Msg
{
  public:                   
    cHwEthernet_Header eth; 
    cNetIP_Header      ip;  
                            
};


#pragma pack(8)


class cNetICMP;
class cNetTCP;
class cNetUDP;




class cNetIP
{
  public:
    enum
    {
      PROTOCOL_NONE = 0x00,
      PROTOCOL_ICMP = 0x01,
      PROTOCOL_TCP  = 0x06,
      PROTOCOL_UDP  = 0x11
    };

  public:
    
    cNetIP( cHwEthernet &eth,
            const cNetAddr<4> &addr,
            cHwTimer    &timer 
          );

    void create( const cNetAddr<6> destAddrPhy,
                 const cNetAddr<4> destAddr,
                 const WORD        payloadLen,
                 const WORD        protocol 
               );

    void process( void );
  
    void update();
  
    void setTCP( cNetTCP  *tcp 
               );

    void setUDP( cNetUDP  *udp 
               );
    
    void setICMP( cNetICMP *icmp 
                );
                
    cNetAddr<4> &getAddr( void )
    {
      return( addr );
    }

  private:
    
  class cTimeOutTimer : public cList::Item
    {
      public:
        
        cTimeOutTimer( cHwTimer &timer )
        {
          timer.add( this );
          max = 10000L / timer.getCycleTime(); 

          cnt = max;
        }

        
        virtual void update( void )
        {
          if( !(cnt--) )
          {
            cnt = max;
            flag = true;
          }
        }

        
        WORD cnt;
        WORD max;
        BYTE flag;
    };
    
  public:
    
    cHwEthernet &eth;
    cNetAddr<4>  addr;
    cNetARP      arp;  
  
  private:
    
    static const BYTE  VERSION_IHL   = (0x40 | 0x05); 
    
    cTimeOutTimer timeOutTimer;

    cNetIP_Msg &msg;
    cNetUDP    *udp;
    cNetTCP    *tcp;
    cNetICMP   *icmp;
  
}; 

#line 5 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetUDP.h"

#pragma pack(1)

class cNetUDP_Header
{
  public:                
    cNetWORD sourcePort; 
    cNetWORD destPort;   
    cNetWORD length;     
    cNetWORD checksum;   
                         
};

class cNetUDP_Msg
{
  public:                   
    cHwEthernet_Header eth; 
    cNetIP_Header     ip;   
    cNetUDP_Header    udp;  
                            
};

#pragma pack(8)





class cNetUDP : public cNetTransport
{
  public:
    
    class Socket : public cNetTransport::Socket
    {
      public:
        
        Socket( cNetUDP         &udp,
                cNetApplication &app,
                cNetAddr<4>      inAddr,
                WORD             port,
                WORD             updateTime = 0
              );

      virtual void open( cNetAddr<4> addr,
                         WORD        port );

      virtual void close( void );

      virtual BYTE isConnected( void );

      virtual BYTE isReady( void );

      virtual void clear( void );

      virtual void fillBuffer( const char c );

      virtual void send( void );

      virtual BYTE get( char *c );

      virtual BYTE *getDataPtr( void );

      virtual void setDataLength( WORD len );


      private:
        
        virtual BYTE process( void );
        virtual void update( void );
        virtual void timeout( void );


      private:
        WORD        dataLen;
        BYTE       *dataPtr;

        cNetUDP         &udp;

      friend class cNetUDP;

    }; 

    
    cNetUDP( cNetIP   &ip
             
           );

    virtual void handleARP( cNetAddr<4> addr, cNetAddr<6> addrPhy );

  private:
    
    void create( Socket &con, WORD payloadLen );
  public:
    virtual cNetAddr<4> &getAddr( void )
    {
      return( ip.addr );
    }

    virtual const cNetAddr<6> &getAddrPhy( void )
    {
      return( ip.eth.addrPhy );
    }

  public:
    cNetIP   &ip;

  private:
    WORD inPos;
    WORD inBufLen;
    BYTE *buf;

}; 

#line 7 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetDHCP.h"


#pragma pack(1)



class cNetDHCP_Data
{
  public:                    
    cNetBYTE    op;          
    cNetBYTE    htype;       
    cNetBYTE    hlen;        
    cNetBYTE    hops;        
    cNetDWORD   xid;         
    cNetWORD    secs;        
    cNetWORD    flags;       
    cNetAddr<4> ciAddr;      
    cNetAddr<4> yiAddr;      
    cNetAddr<4> siAddr;      
    cNetAddr<4> giAddr;      
    cNetBYTE    chAddr[16];  
    cNetBYTE    sname[64];   
    cNetBYTE    bfile[128];  
    cNetBYTE    options[64]; 
                             
};


#pragma pack(8)





class cNetDHCP : public cNetApplication
{
  public:
    
    cNetDHCP(cNetUDP     &udpIn,
             const char  *hostName = ""
            );

    
    virtual void process( void );
    
    
    virtual void update( void ) {}

    
    virtual void timeout( void );

  private:
   
   enum
    {
      DISCOVER = 1,
      OFFER    = 2,
      REQUEST  = 3,
      DECLINE  = 4,
      ACK      = 5,
      NAK      = 6,
      RELEASE  = 7,
      INFORM   = 8
    };
    
  private:
    
    void send( BYTE msgType );

    
    BYTE parse_options( BYTE *optptr, 
                        int   len );

  private:   
    
    const char        *hostName;
    cNetAddr<4>       &addr; 
    const cNetAddr<6>       &addrPhy;
    cNetAddr<4>        serverAddr;
    cNetUDP::Socket    con;
  
}; 

#line 27 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetICMP.h"




#line 6 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetICMP.h"

#pragma pack(1)

class cNetICMP_Header
{
  public:              
    cNetBYTE type;     
    cNetBYTE code;     
    cNetWORD checksum; 
                       
};

class cNetICMP_Msg
{
  public:                    
    cHwEthernet_Header eth;  
    cNetIP_Header      ip;   
    cNetICMP_Header    icmp; 
                             
};

#pragma pack(8)




class cNetICMP
{
  public:
    cNetICMP( cNetIP &ip
            );

    void process( void );
    
    void update( void ) {}

    void timeout( void ) {}

  private:
    enum
    {
      TYPE_ECHOREPLY   = 0x00,
      TYPE_ECHOREQUEST = 0x08
    };
    
  private:
    cNetIP &ip;

}; 

#line 28 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetTCP.h"





#pragma pack(1)

class cNetARP;

class cNetTCP_Header
{
  public:                        
    cNetWORD  sourcePort;        
    cNetWORD  destPort;          
    cNetDWORD sequenceNumber;    
    cNetDWORD acknowledgeNumber; 
    cNetWORD  dataOffset_flags;  
    cNetWORD  windowSize;        
    cNetWORD  checksum;          
    cNetWORD  urgentPointer;     
    
                                 

    
    
    
    
    

    WORD getDataOffset()
    {
      return( (WORD)((dataOffset_flags.data & 0x00FF)>>4) * 4 );
    }

    void setDataOffset( BYTE offset )
    {
      dataOffset_flags.data = (dataOffset_flags.data &0xFF00) | (offset/4)<<4;
    }

    BYTE getFlags()
    {
      return( (dataOffset_flags.data & 0xFF00) >> 8 );
    }

    void setFlags( BYTE flags )
    {
      dataOffset_flags.data = (dataOffset_flags.data &0x00FF) | ((WORD)flags<<8);
    }
};


class cNetTCP_Msg
{
  public:                   
    cHwEthernet_Header eth; 
    cNetIP_Header      ip;  
    cNetTCP_Header     tcp; 
                            
};


#pragma pack(8)



class cNetTCP;








class cNetTCP : public cNetTransport
{
  public:

    class Socket : public cNetTransport::Socket
    {
      public:
        
        Socket( cNetTCP         &tcp,
                cNetApplication &app,
                cNetAddr<4>      inAddr,
                WORD             port,
                WORD             updateTime = 0 );

    virtual void open( cNetAddr<4> addr,
                       WORD port );

    virtual void close( void );

    virtual BYTE isConnected( void );

    virtual BYTE isReady( void );

    virtual void clear( void );

    virtual void fillBuffer( const char c);

    virtual void send( void );

    virtual BYTE get( char *c );

    virtual BYTE *getDataPtr( void );

    virtual void setDataLength( WORD len);

       private:
        
        virtual BYTE process( void );
        virtual void update( void );
        virtual void timeout( void );


      private:
        enum
        {
          STATE_PENDING          = 100,
          STATE_OPEN_WAIT_SERVER,
          STATE_CONNECTED_WAIT_ACK,
          STATE_FINISHING
        };

      private:
        WORD  flags;

        WORD  dataLen;
        BYTE *dataPtr;
        BYTE  mss;
        DWORD initialSeqNum;
        DWORD seqNum;
        DWORD ackNum;
        DWORD ackNumExpected;
        BYTE type;

    
        cNetTCP         &tcp;

      friend class cNetTCP;

    };

    
    enum
    {
      FLAG_NONE   = 0x00,
      FLAG_FIN    = 0x01,
      FLAG_SYN    = 0x02,
      FLAG_RST    = 0x04,
      FLAG_PUSH   = 0x08,
      FLAG_ACK    = 0x10,
      FLAG_URG_V  = 0x20,
      FLAG_ECE_V  = 0x40,
      FLAG_CWR_V  = 0x80
    };

  public:
    
    cNetTCP( cNetIP  &ip
           );

    virtual void handleARP( cNetAddr<4> addr, cNetAddr<6> addrPhy );



  private:
    
    void create( Socket &con, WORD payloadLen );

  public:
    
    virtual cNetAddr<4> &getAddr( void )
    {
      return( ip.addr );
    }

    virtual const cNetAddr<6> &getAddrPhy( void )
    {
      return( ip.eth.addrPhy );
    }

  public:
    cNetIP   &ip;

  private:
    
    WORD inPos;
    WORD inBufLen;
    BYTE *buf;

}; 

#line 29 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"
#line 30 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.h"


#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/UART_IP.h"
#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/UART_IP.h"








 
template <class T> class cHwUART_IPserver : public cNetApplication, public cHwUART
{
  public:
    
    
 
    cHwUART_IPserver( T &transport, WORD port = 23 )
    : cHwUART(255,255),
      socket( transport, *this, broadcastAddr, port, 10  )
    {
      flag = false;
     
      isAlive = false;
socket.openDefault();
    }

bool flag;
bool isAlive;
  private:
    
    virtual void process( void )
    {
      char c;
       flag = true;
      while( socket.get( &c ) )
      {
        if( c!= 0)
        {
          if(!dataRxBuf.isFull())
            dataRxBuf << c;
        }
      }
      isAlive = true;
    }

    virtual void update( void )
    {
      if( socket.isConnected() && !dataTxBuf.isEmpty() )
      {
         socket.clear( );
         while( !dataTxBuf.isEmpty() )
         {
           BYTE c;
           dataTxBuf >> c;
           socket.fill( c );
         }
         socket.send();
      }
    }

     virtual void timeout( void )
     {
       if(!isAlive && socket.isConnected())
       {
         socket.close();
         flag = false;
       }
       isAlive = false;
       socket.setTimeout(6);
     }

public:
    virtual void setByte(BYTE data) {}
    virtual BYTE getByte() {return(0);}
    virtual void transmitByte( BYTE data )
    {
      if( !dataTxBuf.isFull() ) 
      {

        dataTxBuf << data;          

      }
    }




    
    typename T::Socket socket;

}; 


template <class T> class cHwUART_IPclient : public cNetApplication, public cHwUART
{
  public:
    
    
 
    cHwUART_IPclient( T &transport, cNetAddr<4> addr, WORD port )
    : cHwUART(255,255),
      socket( transport, *this, addr, port, 10  )
 {
   socket.open( addr, port);
    socket.fill( (char)0 );
    socket.send();
   flag = true;
   socket.setTimeout(0);
 }

bool flag;
  private:
    
    virtual void process( void )
    {
      char c;
       flag = true;


      while( socket.get( &c ) )
      {
        if(!dataRxBuf.isFull())
          dataRxBuf << c;

      }
    }

    virtual void update( void )
    {
      if(      !dataTxBuf.isEmpty() )
      {
         socket.clear( );
         while( !dataTxBuf.isEmpty() )
         {
           BYTE c;
           dataTxBuf >> c;
           socket.fill( c );
         }
         socket.send();
      }


    }

     virtual void timeout( void )
     {
       printf("timeout\n");
       if(socket.isConnected())
       {
         socket.close();
         flag = false;
       }
       socket.openDefault();
     }

public:
    virtual void setByte(BYTE data) {}
    virtual BYTE getByte() {return(0);}
    virtual void transmitByte( BYTE data )
    {
      if( !dataTxBuf.isFull() ) 
      {

        dataTxBuf << data;          

      }
    }


  private:
    
    typename T::Socket socket;
};

#line 44 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"

#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Mag_LSM303.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Mag_LSM303.h"










 
class cHwSensMag_LSM303
{
  public:
    
    

 
    cHwSensMag_LSM303( cHwI2Cmaster &i2c );

    
    virtual WORD getX( void );
    virtual WORD getY( void );
    virtual WORD getZ( void );

  private:
    
    WORD readWord( BYTE addr );

  private:
    
  cHwI2Cmaster::Device i2c;

    
    static const BYTE hwAddr = 0x3C;

}; 

#line 46 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Gyro_L3GD20.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Gyro_L3GD20.h"










 
class cHwSensGyro_L3GD20
{
  public:
    
    


 
    cHwSensGyro_L3GD20( cHwI2Cmaster &i2c,
	                BYTE          hwAddr );

    
    virtual WORD getX( void );
    virtual WORD getY( void );
    virtual WORD getZ( void );

  private:
    
    WORD readWord( BYTE addr );

  private:
    
  cHwI2Cmaster::Device i2c;

    
    static const BYTE baseAdr = 0xD4;

}; 

#line 47 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Acc_LSM303.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Acc_LSM303.h"










 
class cHwSensAcc_LSM303
{
  public:
    
    

 
    cHwSensAcc_LSM303( cHwI2Cmaster &i2c );

    
    virtual WORD getX( void );
    virtual WORD getY( void );
    virtual WORD getZ( void );

  private:
    
    WORD readWord( BYTE addr );

  private:
    
  cHwI2Cmaster::Device i2c;

    
    static const BYTE hwAddr = 0x32;

}; 

#line 48 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"




#line 53 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 54 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 55 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 56 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 57 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 58 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 60 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 62 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 63 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 64 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 65 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 66 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 67 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 68 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 69 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 70 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 20 "..\\EmbSysLib\\Lib\\Src\\lib.h"




#line 25 "..\\EmbSysLib\\Lib\\Src\\lib.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/CRC.h"





 






















 
class cCRC
{
  public:
    
    
 
    typedef enum
    {
      SMALL = 0, 
      FAST       
    } MODE;

    
    





 
    cCRC( MODE mode,
          WORD startCRC         = 0xFFFF,
          WORD generatorPolynom = 0xA001 );

    
    
 
    ~cCRC( void );

    
    




 
    WORD operator()( const BYTE *ptr,
                     DWORD        size );

    void operator()( const BYTE data );

    WORD get( void )
    {
      return( crc );
    }

    void reset( void )
    {
      crc = startCRC;
    }

  private:
    
    
    
    WORD tabMethod( BYTE idx );

  private:
    
    WORD *tabArray;
    WORD  crc;
    WORD  startCRC;
    WORD  generatorPolynom;

}; 

#line 26 "..\\EmbSysLib\\Lib\\Src\\lib.h"
#line 27 "..\\EmbSysLib\\Lib\\Src\\lib.h"
#line 28 "..\\EmbSysLib\\Lib\\Src\\lib.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/SharedMem.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Std/SharedMem.h"









 
template <class T> class cSharedMem
{
  public:
    
    
 
    cSharedMem( void )
    {
      memset( &speicher, 0, sizeof(T) );
    }

    
    

 
    void operator<<( const T &ref )
    {
      cSystem::disableInterrupt();
      speicher = ref;
      cSystem::enableInterrupt();
    }

    
    

 
    void operator>>( T &ref )
    {
      cSystem::disableInterrupt();
      ref = speicher;
      cSystem::enableInterrupt();
    }

  private:
    
    T speicher;

}; 

#line 29 "..\\EmbSysLib\\Lib\\Src\\lib.h"
#line 30 "..\\EmbSysLib\\Lib\\Src\\lib.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/Timer.h"







 












 
class cTimer
{
  public:
    
    


 
    cTimer( void );

    
    


 
    void start( WORD timeToWait_msec,
                WORD timeToWait_usec = 0 );

    
    
 
    void start( void );

    
    











 
    BYTE timeout( WORD timeToWait_msec,
                  WORD timeToWait_usec = 0 );

    
    



 
    BYTE timeout( void );

    
    

 
    void stop( void );

  protected:
    
    
    
    
    void set( WORD timeToWait_msec,
              WORD timeToWait_usec = 0 );
              
  protected:
    
    virtual DWORD getTics() = 0;

    
    virtual DWORD getTimeOfTic() = 0;

  protected:
    
    DWORD  startTime;
    DWORD  timeToGo;
    BYTE   running;

}; 

#line 31 "..\\EmbSysLib\\Lib\\Src\\lib.h"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"









 




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogInADC.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogIn.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalog.h"







 
















 
class cDevAnalog
{
  protected:
    
    
    
    
    
    cDevAnalog( BYTE  channel,
                float gain,
                float offset );

  protected:
    
    BYTE  channel;
    float gain;
    float offs;

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogIn.h"












 
class cDevAnalogIn : public cDevAnalog
{
  protected:
    
    
    
    
    
    cDevAnalogIn( BYTE  channel,
                  float max,
                  float min = 0.0f );

  public:
    
    

 
    virtual float get( void ); 

    
    

 
    virtual operator float( void );

    
    
 
    void calibrate( float x1, 
                    float y1,
                    float x2,
                    float y2
                   );

    
    

 
    virtual WORD getRaw( void ) = 0;

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogInADC.h"
#line 17 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogInADC.h"








 
class cDevAnalogInADC : public cDevAnalogIn
{
  public:
    
    




 
    cDevAnalogInADC( cHwADC &adc,
                     BYTE    channel = 0,
                     float   max     = 1.0,
                     float   min     = 0.0 );

  public:
    
    

 
    virtual WORD getRaw( void );

  private:
    
    cHwADC &adc;

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutDAC.h"








 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOut.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOut.h"












 
class cDevAnalogOut : public cDevAnalog
{
  protected:
    
    
    
    
    
    cDevAnalogOut( BYTE  channel,
                   float max,
                   float min = 0.0f );

  public:
    
    

 
    virtual void set( float value );

    
    


 
    virtual float operator=( float value );

    
    

 
    virtual void setRaw( WORD value ) = 0;

}; 

#line 17 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutDAC.h"
#line 18 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutDAC.h"








 
class cDevAnalogOutDAC : public cDevAnalogOut
{
  public:
    
    




 
    cDevAnalogOutDAC( cHwDAC &dac,
                      BYTE    channel = 0,
                      float   max     = 1.0f,
                      float   min     = 0.0f );

  public:
    
    

 
    virtual void setRaw( WORD value );

  private:
    
    cHwDAC &dac;

  public:
    
    using cDevAnalogOut::operator=;

}; 

#line 17 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutPWM.h"








 






#line 17 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutPWM.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Digital/devDigital.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Digital/devDigital.h"


















 
class cDevDigital
{
  public:
    
    

 
    typedef enum
    {
      
      In    = cHwPort::In,     
      InPU  = cHwPort::InPU,   
      InPD  = cHwPort::InPD,   

      
      Out   = cHwPort::OutPP,  
      OutOD = cHwPort::OutOD,  
      OutPU = cHwPort::OutPU,  
      OutPD = cHwPort::OutPD   
    } Mode;

  public:
    
    






 
    cDevDigital( cHwPort &port,
                 BYTE     pinId,
                 Mode     mode,
                 bool     def = 0 );

  public:
   
   
   
    
   


 
    virtual void setMode( Mode mode );

    
    

 
    virtual void set( bool value );

    
    
 
    virtual void set( void )
    {
      set( 1 );
    }

    
    
 
    virtual void clr( void )
    {
      set( 0 );
    }

    
    
 
    virtual void toggle( void )
    {
      set( !valueOut );
    }

    
    
    
    
    

 
    virtual bool get( void );

    
    


 
    virtual void update( void )
    {
      valueInLast = valueIn;
      valueIn     = get();
    }

    
    


 
    virtual bool isSet( void )
    {
      return( valueIn );
    }

    
    


 
    virtual bool isClr( void )
    {
      return( !valueIn );
    }

    
    


 
    virtual bool isReleased( void )
    {
       return( !valueIn && valueInLast );
    }

    
    


 
    virtual bool isActivated( void )
    {
       return( valueIn && !valueInLast );
    }

    
    


 
    virtual bool isChanged( void )
    {
       return( valueIn  != valueInLast );
    }

    
    
    
    
    


 
    virtual bool operator=( bool value )
    {
      set( value );
      return( value );
    }

    
    


 
    virtual bool operator=( cDevDigital &x)
    {
      set( x.get() );
      return( valueOut );
    }

    
    

 
    virtual operator bool( void )
    {
      return( get() );
    }


  private:
    
    bool         valueInLast;
    bool         valueIn;
    bool         valueOut;
    bool         pinDefault;
    cHwPort::Pin pin;

}; 

#line 18 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutPWM.h"
#line 19 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutPWM.h"








 
class cDevAnalogOutPWM : public cDevAnalogOut
{
  public:
    
    





 
    cDevAnalogOutPWM( cHwTimer       &timer,
                      cHwTimer::Mode  mode    = cHwTimer::NORMAL,
                      BYTE            channel = 0,
                      float           max     = 1.0f,
                      float           min     = 0.0f );

  public:
    
    

 
    virtual void setRaw( WORD value );

  private:
    
    cHwTimer &timer;

  public:
    
    using cDevAnalogOut::operator=;

}; 









 
class cDevAnalogOutPWMemul : public cDevAnalogOut, 
                                      cList::Item
{
  public:
    
    







 
    cDevAnalogOutPWMemul( cHwTimer    &timer,
                          cDevDigital &port,
                          BYTE         res = 16,
                          float        max = 1.0,
                          float        min = 0.0 );

  public:
    
    

 
    virtual void setRaw( WORD value );

  private:
    
    virtual void update( void );

  private:
    
    cHwTimer         &timer;
    BYTE              shift;
    WORD              t;
    WORD              max;
    WORD              limit;
    cDevDigital      &port;
    cSharedMem<WORD>  limitBuf;

  public:
    
    using cDevAnalogOut::operator=;

}; 

#line 18 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"




#line 23 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Digital/devDigitalIndicator.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Digital/devDigitalIndicator.h"










 
class cDevDigitalIndicator : public cList::Item
{
  public:
    
    

 
    













 

  public:
    
    






 
    cDevDigitalIndicator( cDevDigital &devDigital,
                          cHwTimer    &timer );

  public:
    
    
    
    
    
 
    virtual void set( void )
    {
      devDigital.set();
    }

     
    
 
    virtual void clr( void )
    {
      devDigital.clr();
    }

    
    
 
    virtual void trigger( WORD timeoutIn )
    {
      devDigital.set();
      timeout = ((DWORD)timeoutIn*1000)/cycleTime;
    }

  private:
    
    virtual void update( void );

  private:
    
    cDevDigital &devDigital;
    cHwTimer    &timer;
    DWORD        timeout;
    DWORD        cycleTime;

}; 

#line 24 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplay.h"







 












 
class cDevDisplay
{
  protected:
    
    
    
    cDevDisplay( void );

  public:
    
    
 
    virtual void clear( void ) = 0;

    
    





 
    virtual void printf( BYTE        line,   
                         BYTE        column, 
                         BYTE        minLen, 
                         const char *format, 
                         ...) = 0;
  

}; 

#line 29 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayChar.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayChar.h"
#line 17 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayChar.h"










 
class cDevDisplayChar : public cDevDisplay
{
  public:
    
    



 
    cDevDisplayChar( cHwDisplay &display );

    
    
 
    virtual void clear( void );

    
    





 
    virtual void printf( BYTE        line, 
                         BYTE        column,
                         const char *str );

    
    









 
    virtual void printf( BYTE        line,
                         BYTE        column,
                         BYTE        minLen,
                         const char *format,
                         ... );

  private:
    
    cHwDisplay &display;

}; 

#line 30 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayGraphic.h"





 







#line 15 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayGraphic.h"
#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayGraphic.h"

















 
class cDevDisplayGraphic : public cDevDisplay
{
  public:
    
    


 
    cDevDisplayGraphic( cHwDisplayGraphic &display 
                      );

    
    
 
    virtual void clear( void );

    
    







 
    virtual void printf( BYTE        line,   
                         BYTE        column, 
                         BYTE        minLen, 
                         const char *format, 
                         ...);

    
    
 
    virtual void setFont( cHwDisplayFont font,     
                          BYTE           zoom = 1  
                        );

    
    
 
    virtual void setZoom( BYTE zoom = 1 
                        );

    
    
 
    virtual void setBackColor( WORD color 
                             );

    
    
 
    virtual void setTextColor( WORD color  
                             );

    
    
 
    virtual void drawText( WORD        x,  
                           WORD        y,  
                           const char *str 
                          );

    
    





 
    virtual void drawText( WORD        x,      
                           WORD        y,      
                           BYTE        minLen, 
                           const char *format, 
                           ... );

    
    
 
    virtual void drawPixel( WORD x,     
                            WORD y,     
                            WORD color  
                          );

    
    
 
    virtual void drawRectangle( WORD x,    
                                WORD y,    
                                WORD w,    
                                WORD h,    
                                WORD color 
                              );

    
    
 
    virtual void drawFrame( WORD x,    
                            WORD y,    
                            WORD w,    
                            WORD h,    
                            WORD th,   
                            WORD color 
                          );

    
    
 
    virtual void drawCircle( WORD x,    
                             WORD y,    
                             WORD r,    
                             WORD color 
                           );

    
    
 
    virtual void drawLine( WORD x0,   
                           WORD y0,   
                           WORD x1,   
                           WORD y1,   
                           WORD th,   
                           WORD color 
                         );

    
    



 
    virtual void drawBitmap( WORD        x,     
                             WORD        y,     
                             WORD        w,     
                             WORD        h,     
                             const WORD *bitmap 
                           );

    
    

 
    virtual cHwDisplayFont getDefaultFont( void );

  private:
    
    cHwDisplayGraphic &display;

}; 

#line 31 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Memory/devMemory.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Memory/devMemory.h"








 
class cDevMemory
{
  public:
    
    


 
    cDevMemory( cHwMemory &memIn,      
                WORD       addrIn = 0  
              );

    
    

 
    WORD allocate( WORD size   
                 );

    
    
 
    void write( BYTE *data, 
                WORD  size, 
                WORD  offs  
              );

    
    
 
    void read( BYTE *data,  
               WORD  size,  
               WORD  offs   
             );

    
    
 
    void clear( void );

    
    
 
    void setValid( void );

    
    



 
    BYTE isValid( void );

    BYTE isFlash( void )
    {
      return( mem.isFlash() );
    }


  private:
    
    WORD       addr;
    WORD       pos;
    cHwMemory &mem;

}; 








 
template <class T> class cDevMemoryFragment
{
  public:
    
    
 
    cDevMemoryFragment( cDevMemory &memIn  
                      )
    : mem( memIn )

    {
      offs = mem.allocate( sizeof( T )+1 );
    }

    
    



 
    BYTE isValid( void )
    {
      BYTE valid = 0;

      mem.read( &valid, sizeof( BYTE ), offs );
      return( ( valid == 0xAA ) ? true : false );
    }

    
    
 
    void clear( void )
    {
      BYTE valid = 0;
      mem.write( &valid, sizeof( BYTE ), offs );
    }

    
    


 
    void operator>>( T &data 
                   )
    {
      if( isValid() )
      {
        mem.read( (BYTE*)&data, sizeof( T ), offs+1 );
      }
    }

    
    
 
    void operator<<( const T &data 
                   )
    {
      BYTE valid = 0xAA;

      mem.write( (BYTE*)&data, sizeof( T ), offs+1 );
      mem.write( &valid, sizeof( BYTE ), offs );
    }

  private:
    
    cDevMemory &mem;
    WORD        offs;

};

#line 36 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Memory/devMemoryFlash.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Memory/devMemoryFlash.h"








 
template <class T> class cDevMemoryFlash
{
  public:
    
    



 
    cDevMemoryFlash( cHwMemory &memIn )

    : mem( memIn )

    {
      WORD  checkSum = 0;
      DWORD i        = 0;

      isValidFlag = false;
      if( mem.read( sizeof(T)+2 ) == 0xAA ) 
      {
        for( i = 0; i < sizeof(T); i++ )
        {
          checkSum += mem.read( i );
        }

        if(    (checkSum&0xFF) == mem.read( i++ )
            && (checkSum>>8)   == mem.read( i++ ) )
        {
          BYTE *ptr = (BYTE*)&data;
          for( i = 0; i < sizeof(T); i++, ptr++ )
          {
            *ptr = mem.read( i );
          }
          isValidFlag = true;
        }
      }
    }

    
    
 
    bool isValid()
    {
      return( isValidFlag );
    }
    
    
 
    BYTE store( void )
    {
      BYTE *ptr      = (BYTE*)&data;
      DWORD i        = 0;
      WORD  checkSum = 0;
      BYTE  ok       = true;


      mem.unlock();
      mem.clear();
      mem.lock();

      mem.unlock();
      for( i = 0; i < sizeof(T); i++, ptr++ )
      {
        mem.write( i, *ptr );
        checkSum += *ptr;
      }
      mem.write( i++, checkSum&0xFF );
      mem.write( i++, checkSum>>8  );
      mem.write( i++, 0xAA );
      while( i%4 ) 
      {
        mem.write( i++, 0x00 );
      }
      mem.lock();


      
      ptr = (BYTE*)&data;
      for( i = 0; i < sizeof(T); i++, ptr++ )
      {
        if( *ptr != mem.read( i ) )
        {
          ok = false;
        }
      }
      if(    (checkSum&0xFF) != mem.read( i++ )
          || (checkSum>>8  ) != mem.read( i++ )
          || (0xAA         ) != mem.read( i++ ) )
      {
        ok = false;
      }

      if( ok )
      {
        isValidFlag = true;
      }
      return( ok );
    }

  public:
    
    T          data;

  private:
    
    cHwMemory &mem;
    bool       isValidFlag;

}; 

#line 37 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO_UART.h"







 






#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO.h"







 




























 
class cDevTextIO
{
  protected:
    
    
    cDevTextIO( BYTE        inBufSize,    
                BYTE        outBufSize,   
                const char *eos = "\n\r", 
                const char *key = ""      
              );

  public:
    
    














 
    char *getString( void );

    
    





 
    virtual void printf( const char *format, 
                         ...                 
                       );

  protected:
    
    virtual void set( BYTE *str, BYTE size ) = 0;
    
    
    virtual bool get( BYTE *c ) = 0;
    
  private:
    
    char       *strIn;
    char       *strOut;
    BYTE        inBufSize;
    BYTE        outBufSize;
    BYTE        idx;
    const char *eos;
    const char *key;
    BYTE        escape;
    BYTE        last;

}; 

#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO_UART.h"
#line 17 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO_UART.h"









 
class cDevTextIO_UART : public cDevTextIO
{
  public:
    
    

 
    cDevTextIO_UART( cHwUART    &uart,         
                     BYTE        inBufSize,    
                     BYTE        outBufSize,   
                     const char *eos = "\n\r", 
                     const char *key = ""      
                   );

  protected:
    
    virtual void set( BYTE *str, BYTE size );
    
    
    virtual bool get( BYTE *c );
    
  private:
    
    cHwUART    &uart;
 
}; 

#line 42 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoder.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoder.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoder.h"














 
class cDevControlEncoder : public cList::Item
{
  public:
    
    
 
	  typedef enum
    {
      NONE = 0, 
      LEFT,     
      RIGHT,    
      CTRL_DWN, 
      CTRL_UP,  
      NUMITEMS

	  } tEvent;

  protected:
    
    
    
    
    
    cDevControlEncoder( cDevDigital *btnCtrlIn,
                 cHwTimer    *timer = 0 );

  public:
    
    

 
    tEvent get( void );

    
    


 
 	  virtual void update( void );

  protected:
    
    
    
    
    
    
    
    
    
    
		
		
    
    
	  virtual tEvent getCtrl( void );

    
    
    
    
    
	  virtual tEvent getIncrement( void ) = 0;

  private:
    
    cFifo<tEvent> fifo;
    cDevDigital  *btnCtrl;

};

#line 47 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoderJoystick.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoderJoystick.h"











 
class cDevControlEncoderJoystick : public cDevControlEncoder
{
  public:
    
    




 
	  cDevControlEncoderJoystick( cDevDigital *btnLeft,       
                         cDevDigital *btnRight,      
                         cDevDigital *btnCtrl,       
                         cHwTimer    *timerPtr = 0,  
                         WORD         repeatTime = 0 
                       );

  private:
    
	  virtual tEvent getIncrement( void );

  private:
    
    WORD         timerStart;
    WORD         timerCnt;
    cDevDigital *btnLeft;
    cDevDigital *btnRight;

};

#line 48 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoderRotaryKnob.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoderRotaryKnob.h"











 
class cDevControlEncoderRotaryKnob : public cDevControlEncoder
{
  public:
    
    
 
    cDevControlEncoderRotaryKnob( cDevDigital *btnLeft,   
                                  cDevDigital *btnRight,  
                                  cDevDigital *btnCtrl,   
                                  cHwTimer *timerPtr = 0  
                                );

  private:
    
	  virtual tEvent getIncrement( void );

  private:
    
    cDevDigital *btnLeft;
    cDevDigital *btnRight;
};

#line 49 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlPointer.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlPointer.h"








 
class cDevControlPointer
{
  public:
    
    



 
    class cData
    {
      public:
        
        
 
        typedef enum
        {
          NONE     = 0,            
          PRESSED  = 0x01,         
          MOVE_X   = 0x02|PRESSED, 
          MOVE_Y   = 0x04|PRESSED, 
          CTRL_DWN = 0x10,         
          CTRL_UP  = 0x20          
        } Flags;

        
        WORD  posX;  
        WORD  posY;  
        int   delta; 
        Flags flags; 
    };

    
    
 
    cDevControlPointer( cHwTouch &touch 
               );

    
    

 
    virtual cData get( void );

  private:
    
    cHwTouch &touch;
    BYTE      isTouchedPrev;
    cData     data;
    int       posXprev;
    int       posYprev;

};

#line 50 "..\\EmbSysLib\\Lib\\Src\\Device/Device.h"



#line 36 "..\\EmbSysLib\\Lib\\Src\\lib.h"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Task/TaskHandler.h"







 






#line 16 "..\\EmbSysLib\\Lib\\Src\\Task/TaskHandler.h"
#line 17 "..\\EmbSysLib\\Lib\\Src\\Task/TaskHandler.h"
















 
class cTaskHandler : public cList::Item
{
  public:
    
    








 
    class Task : public cList::Item
    {
      public:
        
        


 
        Task( cTaskHandler &taskHandler );

      private:
        
        
 
        virtual void update( void ) = 0;

    }; 


  public:
    
    





 
    class Timer : public cTimer
    {
      public:
        
        






 
        Timer( cTaskHandler &taskHandler,
               WORD          timeToWait_msec = 0,
               WORD          timeToWait_usec = 0 );

      private:
        
        virtual DWORD getTics( void );

        
        virtual DWORD getTimeOfTic( void );

      private:
        
        cTaskHandler &taskHandler;

    }; 

  public:
    
    

 
    cTaskHandler( cHwTimer *timerPtr );

    
    



 
    cTaskHandler( cTaskHandler *taskPtr = 0 );

    
    

 
    virtual DWORD getCycleTime( void );

    
    


 
    virtual unsigned long getTics( void );

    
    
 
    virtual void run( void );

    
    

 
    virtual void addTask( Task *taskPtr );

  private:
    
    virtual void update( void );

  private:
    
    DWORD         tics;
    DWORD         cycleTime;
    cHwTimer     *timerPtr;
    cTaskHandler *taskPtr;
    cList         idle;

}; 

#line 41 "..\\EmbSysLib\\Lib\\Src\\lib.h"

#line 14 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"









 




#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/ADC.cpp"







 







cHwADC::cHwADC( BYTE numIn, cHwTimer *tPtrIn ) 
{
  if( tPtrIn ) 
  {
    tPtrIn->add( this ); 
  }

  currentCh      = 0;
  currentId      = 0;
  numActivatedCh = 0;   
  numOfChannels  = numIn;
  result[0]      = new WORD[numIn];
  result[1]      = new WORD[numIn];
  chList         = new BYTE[numIn];
  idx            = 0;
  isRunning      = false;
}


void cHwADC::enable( BYTE ch )
{ 
  if(    ch             < numOfChannels   
      && numActivatedCh < numOfChannels )  
  {
    result[0][numActivatedCh] = 0;
    result[1][numActivatedCh] = 0;
    chList[numActivatedCh++]  = ch; 
    configCh( ch );                 
  }
}


inline WORD cHwADC::get( BYTE ch )  
{
  cSystem::disableInterrupt();    
                                  
  WORD ret = result[idx?0:1][ch]; 

  cSystem::enableInterrupt();

  return( ret );                
}


inline BYTE cHwADC::getNumberOfChannels( void )  
{
  return( numOfChannels );                
}


inline void cHwADC::update( void )
{
  if( numActivatedCh && !isRunning ) 
                                     
                                     
  {
    currentId = 0;                   
    currentCh = chList[currentId];   
    idx = idx?0:1;                   
    isRunning = true;                
    startCh( currentCh );            
  } 
}


inline void cHwADC::isr( void )
{
  result[idx?1:0][currentCh]       
    = getResult();                 
                                   
  currentId++;                     
   
  if( currentId < numActivatedCh ) 
  {
    currentCh = chList[currentId]; 
    startCh( currentCh );          
  }
  else                             
  {
    currentId = 0;
    currentCh = chList[currentId];  
    isRunning = false;
  }
}


#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/DAC.cpp"







 







cHwDAC::cHwDAC( BYTE numIn )
{
  numOfChannels = numIn;
}


inline BYTE cHwDAC::getNumberOfChannels( void )
{
  return( numOfChannels );
}


#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Display.cpp"







 







cHwDisplay::cHwDisplay( BYTE numberOfLinesIn,
                        BYTE numberOfColumnsIn )
{
  numberOfLines  = numberOfLinesIn;
  numberOfColumns = numberOfColumnsIn;
}


inline BYTE cHwDisplay::getNumberOfLines( void )
{
  return( numberOfLines );
}


inline BYTE cHwDisplay::getNumberOfColumns( void )
{
  return( numberOfColumns );
}


#line 18 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/DisplayGraphic.cpp"





 







cHwDisplayGraphic::cHwDisplayGraphic( cHwDisplayFont fontIn,
                                      BYTE           zoomIn )
: cHwDisplay( 10, 20 ), 
  font( fontIn ),
  zoom( zoomIn )
{
  BackColor  = Blue;
  PaintColor = Grey;
  TextColor  = White;

  xPos = 0;
  yPos = 0;
}


void cHwDisplayGraphic::setFont( cHwDisplayFont fontIn,
                                 BYTE           zoomIn )
{
  font = fontIn;
  zoom = zoomIn;
}


void cHwDisplayGraphic::setZoom( BYTE zoomIn )
{
  zoom = zoomIn;
}


void cHwDisplayGraphic::setBackColor( WORD color )
{
  BackColor = color;
}


void cHwDisplayGraphic::setPaintColor( WORD color )
{
  PaintColor = color;
}


void cHwDisplayGraphic::setTextColor( WORD color )
{
  TextColor = color;
}


void cHwDisplayGraphic::gotoPixelPos( WORD x,
                                      WORD y )
{
  xPos = x;
  yPos = y;
}


void cHwDisplayGraphic::gotoTextPos( BYTE line,
                                     BYTE colum )
{
  xPos = colum * zoom * font.getCharWidth();
  yPos = line  * zoom * font.getCharHeight();
}


void cHwDisplayGraphic::putChar( char ch )
{
  font.setChar( ch ); 

  setArea( xPos,     
           yPos,
           zoom*font.getCharWidth(),
           zoom*font.getCharHeight() + 1 );

  for( BYTE j = 0; j < font.getCharHeight(); j++ )  
  {
     for( BYTE zoomY = 0; zoomY < zoom; zoomY++ )
     {
        for( BYTE i = 0 ; i < font.getCharWidth(); i++ ) 
        {
          BYTE pixel = font.getPixel(i, j);             
          for( BYTE zoomX = 0; zoomX < zoom; zoomX++ )
          {
            setPixel( (pixel) ? TextColor : BackColor );
          }
        }
     }
  }
  xPos += (WORD)zoom*font.getCharWidth(); 
}


void cHwDisplayGraphic::putPixel( WORD x,
                                  WORD y )
{
  setPixel( PaintColor, x, y );
}


void cHwDisplayGraphic::putRectangle( WORD x,
                                      WORD y,
                                      WORD w,
                                      WORD h )
{
  setArea( x, y, w, h );          

  for( WORD i = 0; i < h; i++ )   
  {
    for( WORD j = 0; j < w; j++ ) 
    {
      setPixel( PaintColor );     
    }
  }
}


void cHwDisplayGraphic::putBitmap( WORD        x,
                                   WORD        y,
                                   WORD        w,
                                   WORD        h,
                                   const WORD *bitmap )
{
  setArea( x, y, w, h );          

  for( WORD i = 0; i < h; i++ )   
  {
    for( WORD j = 0; j < w; j++ ) 
    {
      setPixel( *bitmap++ );      
    }
  }
}


#line 19 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/DisplayFont.cpp"





 







cHwDisplayFont::cHwDisplayFont( const cHwDisplayFontProperties *propIn,
                                const BYTE                     *dataIn )
{
  prop     = propIn;
  data     = dataIn;
  selected = data;  
}


 BYTE cHwDisplayFont::getCharWidth( void ) const
{
  return( (prop->charWidth) );
}


BYTE cHwDisplayFont::getCharHeight( void ) const
{
  return( (prop->charHeight) );
}


void cHwDisplayFont::setChar( BYTE c )
{
  BYTE id = 0;

  if( (prop->firstId) <= c && c <= (prop->lastId) ) 
  {
    id = c - (prop->firstId);
  }
  selected = data + (WORD)id * (prop->bytePerChar);
}


BYTE cHwDisplayFont::getPixel( BYTE x, BYTE y )
{
                                                 
  WORD pixel  = ( (WORD)x + (WORD)y * getCharWidth() );

                                                
  BYTE ret = (*(selected+(pixel>>3))) & ( 0x80>>(pixel&0x07) );

  return( ret ? true : false );
}


#line 20 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Encoder.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Encoder.cpp"











#line 21 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Ethernet.cpp"











cHwEthernet::cHwEthernet( const cNetAddr<6> &addrPhyIn )

: addrPhy( addrPhyIn )
{
  plen    = 0;
  arp = 0;
  ip  = 0;
}


void cHwEthernet::update( void )
{
  if( PacketReceive( ) )
  {
    switch( getType() )
    {
      case cHwEthernet::TYPE_ARP: if( arp )  arp->process(); break;
      case cHwEthernet::TYPE_IP:  if(  ip )   ip->process(); break;
    }
  }
  
  if( ip )
  {    
    ip->update();
  }
}



void cHwEthernet::setARP( cNetARP *arpIn )
{
  arp = arpIn;
}


void cHwEthernet::setIP( cNetIP *ipIn )
{
  ip = ipIn;
}


const cNetAddr<4> &cHwEthernet::getIP( void )
{
  if( ip )
    return( ip->getAddr() );
  else
    return( zeroAddr );
}

#line 23 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/I2Cmaster.cpp"







 







cHwI2Cmaster::cHwI2Cmaster( BYTE maskIntrIn )
{
  isHardwareOK = true;
  maskIntr     = maskIntrIn;
}


BYTE cHwI2Cmaster::Device::read( void )
{
  BYTE dat = 0;

  isErrorFlag |= i2c.read( hwAddr, 0, 0, &dat, 1 );

  return( dat );
}


BYTE cHwI2Cmaster::Device::read( BYTE addr )
{
  BYTE dat = 0;

  isErrorFlag |= i2c.read( hwAddr, &addr, 1, &dat, 1 );

  return( dat );
}


BYTE cHwI2Cmaster::Device::read( WORD addr )
{
  BYTE dat        = 0;
  BYTE addrTmp[2] = { (BYTE)(addr>>8),
                      (BYTE)(addr&0xFF) };

  isErrorFlag |= i2c.read( hwAddr, (BYTE *)&addrTmp, 2, &dat, 1 );

  return( dat );
}


void cHwI2Cmaster::Device::read( BYTE *data, BYTE size )
{
  isErrorFlag |= i2c.read( hwAddr, 0, 0, data, size );
}


void cHwI2Cmaster::Device::read( BYTE addr, BYTE *data, BYTE size )
{
  isErrorFlag |= i2c.read( hwAddr, &addr, 1, data, size );
}


void cHwI2Cmaster::Device::read( WORD addr, BYTE *data, BYTE size )
{
  BYTE addrTmp[2] = { (BYTE)(addr>>8),
                      (BYTE)(addr&0xFF) };

  isErrorFlag |= i2c.read( hwAddr, addrTmp, 2, data, size );
}


void cHwI2Cmaster::Device::write( BYTE data )
{
  isErrorFlag |= i2c.write( hwAddr, &data, 1, 0, 0 );
}


void cHwI2Cmaster::Device::write( BYTE addr, BYTE data )
{
  isErrorFlag |= i2c.write( hwAddr, &addr, 1, &data, 1 );
}


void cHwI2Cmaster::Device::write( WORD addr, BYTE data )
{
  BYTE addrTmp[2] = { (BYTE)(addr>>8),
                      (BYTE)(addr&0xFF) };

  isErrorFlag |= i2c.write( hwAddr, (BYTE*)&addrTmp, 2, &data, 1 );
}


void cHwI2Cmaster::Device::write( BYTE *data, BYTE size )
{
  isErrorFlag |= i2c.write( hwAddr, data, size, 0, 0 );
}


void cHwI2Cmaster::Device::write( BYTE addr, BYTE *data, BYTE size )
{
  isErrorFlag |= i2c.write( hwAddr, &addr, 1, data, size );
}


void cHwI2Cmaster::Device::write( WORD addr, BYTE *data, BYTE size )
{
  BYTE addrTmp[2] = { (BYTE)(addr>>8),
                      (BYTE)(addr&0xFF) };

  isErrorFlag |= i2c.write( hwAddr, addrTmp, 2, data, size );
}


BYTE cHwI2Cmaster::Device::isError( void )
{
  BYTE ret = isErrorFlag;

  isErrorFlag = false;

  return( ret );
}


BYTE cHwI2Cmaster::write( BYTE  hwAddr,
                          BYTE *adr,
                          BYTE  sizeAdr,
                          BYTE *data,
                          BYTE  sizeData )
{

  BYTE i = 0;
  isHardwareOK = true;

  if( maskIntr )
    cSystem::disableInterrupt();

  if( sizeAdr || sizeData )
  {
    start();
    sendAddr( hwAddr ); 
    for( i=0; i< sizeAdr; i++ )
    {
       writeByte( adr[i] );
    }
    for( i=0; i< sizeData; i++ )
    {
       writeByte( data[i] );
    }
  }

  stop();

  if( maskIntr )
    cSystem::enableInterrupt();


  return( !isHardwareOK );
}


BYTE cHwI2Cmaster::read( BYTE  hwAddr,
                         BYTE *adr,
                         BYTE  sizeAdr,
                         BYTE *data,
                         BYTE  sizeData )
{
  BYTE i = 0;
  
  isHardwareOK = true;

  if( maskIntr )
    cSystem::disableInterrupt();

  if( sizeAdr )
  {
    start();
    sendAddr( hwAddr ); 
    for( i=0; i< sizeAdr; i++ )
    {
       writeByte( adr[i] );
    }
  }
 
  if( sizeData )
  {
    start();
    sendAddr( hwAddr | 0x01 ); 
    for( i=0; i < sizeData - 1; i++ )
    {
      data[i] = readByteAck();
    }
    data[i] = readByteNack();
  }

  stop();

  if( maskIntr )
    cSystem::enableInterrupt();

  return( !isHardwareOK );
}







cHwI2Cmaster_Emul::cHwI2Cmaster_Emul( cHwPort::Pin &pinSCL_In,
                                      cHwPort::Pin &pinSDA_In,
                                      MODE          mode )

: cHwI2Cmaster( false),
  pinSCL      ( pinSCL_In ),
  pinSDA      ( pinSDA_In )

{
  pinSCL.set();
  pinSDA.set();
  pinSCL.setMode( cHwPort::OutPU );
  pinSDA.setMode( cHwPort::OutPU );
  
  switch( mode )
  {
    default:
    case CR_10kHz:     Twait = 33; break;
    case CR_100kHz:    Twait =  3; break;
    case CR_400kHz:    Twait =  1; break;
    case CR_1000kHz:   Twait =  0; break;
  }
}


void cHwI2Cmaster_Emul::wait( void )
{
  cSystem::delayMicroSec( Twait );
}


void cHwI2Cmaster_Emul::waitForAckn( void )
{
  WORD i= 0xFFFF;

  while( (--i) && pinSDA.get() ); 

  if( i == 0 )
  {
    isHardwareOK = false;
    stop();
  }
  else
  {
    isHardwareOK = true;
  }
}


void cHwI2Cmaster_Emul::start( void )
{
  wait();
  pinSDA.set();
  wait();
  pinSCL.set();
  wait();
  pinSDA.clr();
  wait();
  pinSCL.clr();
}


void cHwI2Cmaster_Emul::stop( void )
{
  wait();
  pinSDA.clr(); 
  wait();
  pinSCL.set(); 
  wait();
  pinSDA.set(); 
  wait();
  pinSCL.clr();
  wait();
  pinSCL.set();
}


void cHwI2Cmaster_Emul::sendAddr( BYTE addr )
{
  writeByte( addr );
}


void cHwI2Cmaster_Emul::writeByte( BYTE byte )
{
  pinSCL.clr();
  for( BYTE mask = 0x80; mask; mask >>= 1 )
  {
    wait();
    pinSDA.set( byte & mask );

    
    wait();
    pinSCL.set();
    wait();
    pinSCL.clr();
  }

  wait();
  pinSDA.set();
  wait();
  pinSCL.set();

  waitForAckn();

  wait();
  pinSCL.clr();
  wait();
}


BYTE cHwI2Cmaster_Emul::readByteNack(void) 
{
  BYTE byte = 0;

  pinSDA.set();

  for (BYTE mask=0x80; mask ; mask >>= 1)
  {
    wait();
    pinSCL.set();
    wait();
    byte |= (pinSDA.get() ? mask : 0 );
    wait();
    pinSCL.clr();
  }

  pinSDA.set(); 

  
  wait();
  pinSCL.set();
  wait();
  pinSCL.clr();
  pinSDA.set();

  return byte;
}



BYTE cHwI2Cmaster_Emul::readByteAck(void) 
{
  BYTE byte = 0;

  pinSDA.set();

  for (BYTE mask=0x80; mask ; mask >>= 1)
  {
    wait();
    pinSCL.set();
    wait();
    byte |= (pinSDA.get() ? mask : 0 );
    wait();
    pinSCL.clr();
  }
  
  pinSDA.clr(); 

  
  wait();
  pinSCL.set();

  wait();
  pinSCL.clr();
  pinSDA.set();

  return byte;
}


#line 25 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/I2Cslave.cpp"





 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/I2Cslave.h"





 























 
class cHwI2Cslave
{
  public:















 
class DataHandler
{
  public:
    




 
    virtual void receive( BYTE data, 
                          BYTE id   ) = 0;

    
    




 
    virtual BYTE transmit( BYTE id ) = 0;

    
    




 
    

}; 

  protected:
    
    
    
    
    
    
    cHwI2Cslave( DataHandler &handler,
                 BYTE         hwAddr  );
    
  protected:
    
    DataHandler &handler;
    BYTE         hwAddr;
   
}; 

#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/I2Cslave.cpp"







cHwI2Cslave::cHwI2Cslave( cHwI2Cslave::DataHandler &handlerIn,
                          BYTE         hwAddrIn  )
: handler(handlerIn)

{
  hwAddr = hwAddrIn;
}


#line 26 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Memory.cpp"







 







cHwMemory::cHwMemory( DWORD sizeIn, BYTE defIn ) 
{
  size        = sizeIn;
  def         = defIn;
  isFlashFlag = false;
}


inline void cHwMemory::write( DWORD addr, BYTE data ) 
{
  if( addr < size )        
  {
    writeByte(addr, data); 
  }
}


inline BYTE cHwMemory::read( DWORD addr ) 
{
  if( addr < size )           
  {
    return( readByte(addr) ); 
  }
  return( def );
}


inline void cHwMemory::clear( DWORD offset ) 
{
  for( WORD i = offset; i < size; i++ )  
  {
    writeByte( i, def );
  }
}


inline DWORD cHwMemory::getSize( void ) 
{
  return( size );
}


inline bool cHwMemory::isFlash( void ) 
{
  return( isFlashFlag );
}


#line 27 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"





 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetStd.cpp"





 



#line 119 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetStd.cpp"

WORD hton( const WORD in )
{
  return(  (((in>>8)&0xFF)   )
         | (((in   )&0xFF)<<8) );
}

DWORD hton( const DWORD in )
{
  return( (((in>>24)&0xFF)    )
         |(((in>>16)&0xFF)<< 8)
         |(((in>> 8)&0xFF)<<16)
         |(((in    )&0xFF)<<24) );
}

WORD ntoh( const WORD in )
{
  return( hton(in) );
}

DWORD ntoh( const DWORD in )
{
  return( hton(in) );
}


#line 171 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetStd.cpp"



























WORD Checksum( BYTE *buf, WORD len, DWORD initialSum = 0)
{
   
   
   
   DWORD sum = initialSum;

   
   while(len > 1)
   {
      sum += 0xFFFF & (((WORD)(*buf) << 8) | *(buf+1));
      buf += 2;
      len -= 2;
   }
   
   if (len > 0)
   {
      sum += ((WORD)(0xFF & *buf) << 8);
   }
   
   
   while (sum >> 16)
   {
      sum = (sum & 0xFFFF) + (sum >> 16);
   }
   
   return ((WORD)sum ^ 0xFFFF);
}



#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetTransport.cpp"

cNetTransport::Socket::Socket( cNetTransport   &transIn,
                                cNetApplication &appIn,
                                cNetAddr<4>      inAddrIn,
                                WORD             portIn,
                                WORD             updateTimeIn )
: app  ( appIn   )

{
  addrPhy    = zeroAddrPhy;
  addr       = zeroAddr;
  myPort     = portIn;
  remoteAddr = inAddrIn;
  remotePort = portIn;
  timeOutTic = 0;
  updateTime = updateTimeIn/10; 
  updateTic  = updateTime;
  state      = STATE_WAITING;

  transIn.appList.add( (cList::Item*)this );
}



cNetTransport::cNetTransport(   )



{
}


void cNetTransport::process( void )
{
  Socket *ptr = (Socket *)appList.getFirst();

  while( ptr ) 
  {
    ptr->process();
    ptr = (Socket *)ptr->getNext();
  }
}


void cNetTransport::update( void )
{
  Socket *ptr = (Socket *)appList.getFirst();

  while( ptr )
  {
    ptr->update();
    ptr = (Socket *)ptr->getNext();
  }
}


void cNetTransport::timeout( void )
{
  Socket *ptr = (Socket *)appList.getFirst();

  while( ptr )
  {
    ptr->timeout();
    ptr = (Socket *)ptr->getNext();
  }
}


cNetAddr<4> cNetTransport::Socket::getRemoteIP( void )
{
  return( remoteAddr );
}

#line 11 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"

#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetARP.cpp"

cNetARP::cNetARP( cHwEthernet &ethIn,
                  
                  cNetAddr<4> &addrIn )

: eth ( ethIn  ), 
  addr( addrIn ) ,
  msg( *(cNetARP_Msg*)eth.buf )

{
  eth.setARP( this );
  tcp = 0;
  udp = 0;
}


void cNetARP::process( void )
{
  switch( msg.arp.operationCode )
  {
    case OPCODE_REQUEST:
      if( msg.arp.destAddr == addr )
      {
        eth.create( msg.eth.sourceAddr, cHwEthernet::TYPE_ARP );

        msg.arp.operationCode = OPCODE_REPLY;
        msg.arp.sourceAddrPhy = eth.addrPhy;
        msg.arp.sourceAddr    = addr;
        msg.arp.destAddrPhy   = msg.arp.sourceAddrPhy;
        msg.arp.destAddr      = msg.arp.sourceAddr;

        eth.PacketSend( (BYTE*)&msg, sizeof(cNetARP_Msg) ); 
      }
      break;

    case OPCODE_REPLY:
      if( tcp )
      {
        tcp->handleARP( msg.arp.sourceAddr, 
                        msg.arp.sourceAddrPhy );
      }
      if( udp )
      {
        udp->handleARP( msg.arp.sourceAddr, 
                        msg.arp.sourceAddrPhy );
      }
      break;
  }
}


void cNetARP::request( cNetAddr<4> &addrIn )
{
  eth.create( broadcastAddrPhy, cHwEthernet::TYPE_ARP );

  msg.arp.hardwareType    = (WORD)1; 
  msg.arp.protocolType    = 0x0800;
  msg.arp.physicalAddrLen = 6;
  msg.arp.protocolAddrLen = 4;
  msg.arp.operationCode   = OPCODE_REQUEST;
  msg.arp.sourceAddrPhy   = eth.addrPhy;
  msg.arp.sourceAddr      = addr;
  msg.arp.destAddrPhy     = broadcastAddrPhy;
  msg.arp.destAddr        = addrIn;

  eth.PacketSend( (BYTE*)&msg,  sizeof(cNetARP_Msg) ); 
}


void cNetARP::setTCP( cNetTCP *tcpIn )
{
  tcp = tcpIn;
}


void cNetARP::setUDP( cNetUDP *udpIn )
{
  udp = udpIn;
}


#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetDHCP.cpp"






cNetDHCP::cNetDHCP( cNetUDP     &udpIn,
                    const char  *hostNameIn )

: addr   ( udpIn.getAddr()    ),
  addrPhy( udpIn.getAddrPhy() ),
  con    ( udpIn, *this, broadcastAddr, 68 )
{
  hostName       = hostNameIn;
  serverAddr     = zeroAddr;

  con.setTimeout( 1 );
}


void cNetDHCP::process()
{
  cNetDHCP_Data &dhcp = *(cNetDHCP_Data*)con.getDataPtr();

  
  if(    dhcp.op   == 2               
      && dhcp.hlen == sizeof(addrPhy) 
      && memcmp( (char*)&addrPhy,
                 dhcp.chAddr, 
                 sizeof(addrPhy) ) == 0 )
  {
    switch( parse_options( dhcp.options, sizeof(dhcp.options) ) )
    {
      case OFFER:
        if( serverAddr == zeroAddr )
        {
          serverAddr = dhcp.siAddr;
          addr       = dhcp.yiAddr;
          
          con.open( broadcastAddr, 67 );
          send( REQUEST );
        }
        break;

      case ACK:
      case NAK:
        con.setTimeout( 3600 ); 
        break;
    }
  }
}


void cNetDHCP::timeout()
{
  if( addr == zeroAddr )
  {
    con.open( broadcastAddr, 67 );
    send( DISCOVER ); 
  }
  else
  {
    con.open( serverAddr, 67 );
    send( REQUEST ); 
  }
  con.setTimeout( 3 ); 
}


BYTE cNetDHCP::parse_options( BYTE *optptr, int len )
{
  BYTE pos = 4; 
  BYTE type = 0;

  while(pos < len) 
  {
    switch( optptr[pos] ) 
    {
      case 53: 
        type = optptr[pos + 2];
        break;

      case 255: 
        return type;
    }
    pos += optptr[pos+1] + 2;
  }
  return type;
}


void cNetDHCP::send( BYTE msgType )
{
  
  
  cNetDHCP_Data &dhcp = *(cNetDHCP_Data*)con.getDataPtr();
  
  memset((char*)&dhcp, 0, sizeof(cNetDHCP_Data));
  
  dhcp.op    = 1; 
  dhcp.htype = 1; 
  dhcp.hlen  = sizeof( addrPhy );
  dhcp.hops  = 0;
  dhcp.xid   = 0x1234abcd;
  dhcp.secs  = 0;
  dhcp.flags = 0x8000; 

  memcpy( dhcp.chAddr, &addrPhy, dhcp.hlen );

  con.setDataLength( sizeof(cNetDHCP_Data) - sizeof(dhcp.options) );

  
  
  
  
  
  
  con.fill(  99 ); 
  con.fill( 130 );
  con.fill(  83 );
  con.fill(  99 );

  
  con.fill( 53 ); 
  con.fill( 1 );
  con.fill( msgType );

  
  con.fill( 12 ); 
  con.fill( strlen( hostName ) );
  con.fill( hostName );

  
  con.fill( 255 ); 

  con.send();
}


#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetICMP.cpp"

cNetICMP::cNetICMP( cNetIP &ipIn )

: ip( ipIn )

{
  ip.setICMP( this );
}


void cNetICMP::process( void )
{
  cNetICMP_Msg &msg = *(cNetICMP_Msg*)ip.eth.buf;

  switch( msg.icmp.type )
  {
    case TYPE_ECHOREQUEST:

      WORD dataLen    = msg.ip.packetLength;
      WORD payloadLen = dataLen - (   sizeof( cNetIP_Header ) 
                                    + sizeof( cNetICMP_Header ) );
      ip.create( msg.eth.sourceAddr, 
                 msg.ip.sourceAddr, 
                 payloadLen,
                 cNetIP::PROTOCOL_ICMP );

      msg.icmp.type = TYPE_ECHOREPLY;

      msg.icmp.checksum = 0;
      msg.icmp.checksum = Checksum( (BYTE*)&msg.ip, dataLen, 0 );

      ip.eth.PacketSend( ip.eth.buf,
                         sizeof( cHwEthernet_Header ) + dataLen );
      break;
  }
}


#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetIP.cpp"






cNetIP::cNetIP( cHwEthernet &ethIn,
                const cNetAddr<4> &addrIn,
                cHwTimer &timer )

: eth         ( ethIn  ), 
  addr        ( addrIn ),
  arp         ( ethIn, addr ),
  timeOutTimer( timer  ),
  msg         ( *(cNetIP_Msg*)eth.buf )

{
  tcp  = 0;
  udp  = 0;
  icmp = 0;
  eth.setIP( this );
}


void cNetIP::process( void )
{
  if( msg.ip.version_IHL == VERSION_IHL )
  {
    if(    msg.ip.destAddr == addr 
        || msg.ip.protocol == PROTOCOL_UDP )
    {
      switch( msg.ip.protocol )
      {
        case cNetIP::PROTOCOL_TCP:  if(  tcp ) {  tcp->process(); } break;
        case cNetIP::PROTOCOL_UDP:  if(  udp ) {  udp->process(); } break;
        case cNetIP::PROTOCOL_ICMP: if( icmp ) { icmp->process(); } break;
      }
    }
  }
}


void cNetIP::update( void )
{
  if(  tcp ) {  tcp->update(); }
  if(  udp ) {  udp->update(); }
  if( icmp ) { icmp->update(); }

  if( timeOutTimer.flag )
  {
    timeOutTimer.flag = false;

    if(  tcp )  {  tcp->timeout(); }
    if(  udp )  {  udp->timeout(); }
    if( icmp )  { icmp->timeout(); }
  }
}


void cNetIP::create( const cNetAddr<6> destAddrPhy,
                     const cNetAddr<4> destAddr,
                     const WORD        payloadLen,
                     const WORD        protocol )
{
  WORD len = 0;

  eth.create( destAddrPhy, cHwEthernet::TYPE_IP );

  switch( protocol )
  {
   case PROTOCOL_UDP:  len = sizeof( cNetUDP_Header  ); break;
   case PROTOCOL_ICMP: len = sizeof( cNetICMP_Header ); break;
   case PROTOCOL_TCP:  len = sizeof( cNetTCP_Header  ); break;
  }
  
  msg.ip.version_IHL    = VERSION_IHL;
  msg.ip.TypeOfService  = 0;
  msg.ip.packetLength   = sizeof( cNetIP_Header ) 
                           + len
                           + payloadLen;
  msg.ip.identification = 123;
  msg.ip.TTL            = 64;
  msg.ip.protocol       = protocol;
  msg.ip.sourceAddr     = addr;
  msg.ip.destAddr       = destAddr;

  msg.ip.setFlags         ( 0x40 ); 
  msg.ip.setFragmentOffset( 0x00 );

  msg.ip.headerChecksum = 0; 
  msg.ip.headerChecksum = Checksum( (BYTE*)&msg.ip, 
                                     sizeof( cNetIP_Header ), 
                                     0 );
}


inline void cNetIP::setTCP( cNetTCP *tcpIn )
{
  tcp = tcpIn;
  arp.setTCP( tcpIn );
}


inline void cNetIP::setUDP( cNetUDP *udpIn )
{
  udp = udpIn;
  arp.setUDP( udpIn );
}


inline void cNetIP::setICMP( cNetICMP *icmpIn )
{
  icmp = icmpIn;
}



#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetTCP.cpp"








cNetTCP::cNetTCP( cNetIP   &ipIn )

: cNetTransport( ),
  ip( ipIn )

{
  ip.arp.setTCP( this );
  ip.setTCP( this );
}


void cNetTCP::create( Socket &con, WORD payloadLen )
{
   cNetTCP_Msg &msg = *(cNetTCP_Msg*)ip.eth.buf;

   msg.tcp.sourcePort        = con.myPort;
   msg.tcp.destPort          = con.remotePort;
   msg.tcp.sequenceNumber    = con.seqNum;
   msg.tcp.acknowledgeNumber = con.ackNum;
   msg.tcp.setFlags( con.flags );
   msg.tcp.windowSize        = 1000;
   msg.tcp.urgentPointer     = 0;

   if (con.mss > 0 )
   {
      
      
     
      ip.eth.buf[ sizeof( cNetTCP_Msg)    ] = 2;
      ip.eth.buf[ sizeof( cNetTCP_Msg) + 1] = 4;
      ip.eth.buf[ sizeof( cNetTCP_Msg) + 2] = 0x05;
      ip.eth.buf[ sizeof( cNetTCP_Msg) + 3] = 0x80;
      payloadLen += 4;

      msg.tcp.setDataOffset( 24 );
   }
   else
   {
      msg.tcp.setDataOffset( 20 );
   }

   ip.create( con.addrPhy,
              con.addr,
              payloadLen,
              cNetIP::PROTOCOL_TCP );

   
   WORD  len = sizeof( cNetTCP_Header) + payloadLen;

   msg.tcp.checksum = 0;
   msg.tcp.checksum = Checksum( (BYTE*)&msg.ip.sourceAddr,
                                 len + 8,
                                 (DWORD)len + cNetIP::PROTOCOL_TCP );

   ip.eth.PacketSend(  ip.eth.buf,
                       sizeof( cNetTCP_Msg) + payloadLen );
}



cNetTCP::Socket::Socket( cNetTCP         &tcpIn,
                         cNetApplication &appIn,
                         cNetAddr<4>      inAddrIn,
                         WORD             portIn,
                         WORD             updateTime )

: cNetTransport::Socket( (cNetTransport &)tcpIn,
                         appIn,
                         inAddrIn,
                         portIn,
                         updateTime ),
  tcp( tcpIn )

{
  initialSeqNum = 10000; 
}


void cNetTCP::Socket::open( cNetAddr<4> addrIn,
                            WORD        portIn )
{
  remotePort  = portIn;
  flags = cNetTCP::FLAG_SYN;

  seqNum = initialSeqNum;
  initialSeqNum += 10000; 

  ackNum = 0;

  dataLen = 0;

  mss = true;

  if( addr == addrIn && !(addrPhy == zeroAddrPhy))
  {
    state = STATE_OPEN_WAIT_SERVER;
    clear();
    tcp.create( *this, tcp.ip.eth.plen );
    setTimeout( 3 );
  }
  else if( !(addr == broadcastAddr) )
  {
    state = STATE_OPEN_WAIT_ARP;
    addr = addrIn;
    clear();
    tcp.ip.arp.request( addr );
    setTimeout( 6 );
  }
}


void cNetTCP::Socket::close( void )
{
  if( state != STATE_FINISHING )
  {
    state  = STATE_FINISHING;

    flags  = cNetTCP::FLAG_FIN | cNetTCP::FLAG_ACK;

    tcp.create( *this, tcp.ip.eth.plen );
    seqNum += tcp.ip.eth.plen; 
    setTimeout( 3 );

    clear();
  }
}


BYTE cNetTCP::Socket::isConnected( void )
{
  return(    state == STATE_CONNECTED
          || state == STATE_CONNECTED_WAIT_ACK );
}


BYTE cNetTCP::Socket::isReady( void )
{
  return(    !(tcp.ip.addr == zeroAddr)
          &&   state == STATE_WAITING );
}


void cNetTCP::Socket::clear( void )
{
  tcp.ip.eth.plen = 0;
}


void cNetTCP::Socket::fillBuffer( const char c )
{
  WORD pos = sizeof( cNetTCP_Msg ) + tcp.ip.eth.plen;

  if( pos < 1500 )
  {
    tcp.ip.eth.buf[pos] = c;
    tcp.ip.eth.plen++;
  }

  if( pos + 1 >= 1500 )
  {
    send();
  }
}


void cNetTCP::Socket::send( void )
{
  tcp.create( *this, tcp.ip.eth.plen );
  seqNum += tcp.ip.eth.plen;

  setTimeout( 3 );
  ackNumExpected = seqNum;
  state = STATE_CONNECTED_WAIT_ACK;
  clear( );
}


BYTE cNetTCP::Socket::get( char *c )
{
  if( tcp.inPos < tcp.inBufLen )
  {
    *c = tcp.buf[tcp.inPos++];
    return( true );
  }
  return( false );
}


BYTE *cNetTCP::Socket::getDataPtr( void )
{
  return( (BYTE*)&tcp.ip.eth.buf[ sizeof(cNetTCP_Msg) ] );
}


void cNetTCP::Socket::setDataLength( WORD len )
{
  tcp.ip.eth.plen = len;
}



BYTE cNetTCP::Socket::process( void )
{
  cNetTCP_Msg &msg = *(cNetTCP_Msg*)tcp.ip.eth.buf;

  WORD  flagsMsg   = msg.tcp.getFlags();
  DWORD ackNumMsg  = msg.tcp.acknowledgeNumber;
  DWORD seqNumMsg  = msg.tcp.sequenceNumber;

  WORD dataLen =   msg.ip.packetLength
                 - sizeof(cNetIP_Header)
                 - msg.tcp.getDataOffset();

  BYTE *dataPtr = 0;

  if( dataLen > 0 )
  {
    WORD idx = sizeof( cNetIP_Msg ) + msg.tcp.getDataOffset();
    if( idx > 0 )
    {
      dataPtr = &tcp.ip.eth.buf[ idx ];
    }
  }

  
  tcp.ip.eth.plen = 0;

  if( !(myPort == msg.tcp.destPort) )
  {
    return( false );
  }

  if( flagsMsg & cNetTCP::FLAG_RST )
  {
    state = STATE_WAITING;
    mss   = false;
    return( true );
  }

  switch( state )
  {
    case STATE_WAITING:
      if( flagsMsg & cNetTCP::FLAG_SYN )
      {
        state   = Socket::STATE_PENDING;
        addr    = msg.ip.sourceAddr;
        remotePort    = msg.tcp.sourcePort;
        addrPhy = msg.eth.sourceAddr;
        flags   = cNetTCP::FLAG_SYN | cNetTCP::FLAG_ACK;
        mss     = true;

        initialSeqNum += 10000; 

        seqNum = initialSeqNum;
        ackNum = seqNumMsg + 1;

        tcp.create( *this, tcp.ip.eth.plen );
        setTimeout( 3 );
        return( true) ;
      }
      break;

    case STATE_PENDING:
      if( flagsMsg & cNetTCP::FLAG_ACK )
      {
        state = STATE_CONNECTED;
        mss   = false;
      }
      seqNum = seqNum + 1;
      ackNum = seqNumMsg  + 1;
      break;

    case STATE_OPEN_WAIT_SERVER:
      if( flagsMsg & cNetTCP::FLAG_ACK )
      {
        state  = STATE_CONNECTED;
        mss    = false;
        flags  = cNetTCP::FLAG_ACK;
        seqNum = seqNum + 1;
        ackNum = seqNumMsg  + 1;

        tcp.create( *this, tcp.ip.eth.plen );
        setTimeout( 0 );
        return( true );
      }
      break;

    case STATE_CONNECTED:
      if( flagsMsg & cNetTCP::FLAG_FIN )
      {
        state  = Socket::STATE_FINISHING;
        flags  = cNetTCP::FLAG_FIN | cNetTCP::FLAG_ACK;
        seqNum = ackNumMsg;
        ackNum = seqNumMsg + dataLen;
        tcp.ip.eth.plen = 0;      

        tcp.create( *this, tcp.ip.eth.plen );
        setTimeout( 3 );
        return( true );
      }
      else
      {
        state  = Socket::STATE_CONNECTED_WAIT_ACK;

        flags = cNetTCP::FLAG_ACK;
      }
      seqNum = ackNumMsg;
      ackNum = seqNumMsg + dataLen;

      break;

    case STATE_CONNECTED_WAIT_ACK:
      if(   ( flagsMsg & cNetTCP::FLAG_ACK )
           && ackNumMsg == ackNumExpected  )
      {
        state = STATE_CONNECTED;
        flags = cNetTCP::FLAG_NONE;
  
      }
else
{

}
  if( dataLen > 0 )
      {
        flags = cNetTCP::FLAG_ACK;
      }
      seqNum = ackNumMsg;
      ackNum = seqNumMsg + dataLen;

      break;

    case STATE_FINISHING:
      if( flagsMsg & cNetTCP::FLAG_FIN )
      {
        state  = STATE_WAITING;
        flags  = cNetTCP::FLAG_ACK;
        seqNum = ackNumMsg + 1;
        ackNum = seqNumMsg + dataLen + 1;

        tcp.create( *this, tcp.ip.eth.plen );
        setTimeout( 3 );
        return( true );
      }
      seqNum = ackNumMsg;
      ackNum = seqNumMsg + dataLen;
      break;
  } 

  if( dataLen > 0 )
  {
    seqNum = ackNumMsg;
    ackNum = seqNumMsg + dataLen;

    tcp.buf = dataPtr;
    tcp.inPos = 0;
    tcp.inBufLen = dataLen;

    app.process();
  }

  return( true );
}


void cNetTCP::Socket::update( void )
{
  if(      state   == STATE_OPEN_WAIT_ARP
      && !(addrPhy == zeroAddrPhy) )
  {
    clear( );
    tcp.create( *this, tcp.ip.eth.plen );
    setTimeout( 3 );
    state = STATE_OPEN_WAIT_SERVER;
  }
}


void cNetTCP::Socket::timeout( void )
{
  if( timeOutTic && !(--timeOutTic) )
  {
    app.timeout();

    switch( state )
    {
      case STATE_PENDING:
      case STATE_OPEN_WAIT_SERVER:
      case STATE_OPEN_WAIT_ARP:
      case STATE_CONNECTED_WAIT_ACK:
      case STATE_FINISHING:

        state = STATE_WAITING;
        break;
    }
  }

  if( updateTic && !(--updateTic) )
  {
    updateTic = updateTime;
    app.update();
  }
}


void cNetTCP::handleARP( cNetAddr<4> addr, cNetAddr<6> addrPhy )
{
  Socket *ptr = (Socket *)appList.getFirst();
  while( ptr )
  {
    if(    ptr->addr == addr
        && (   ptr->state == Socket::STATE_WAITING
            || ptr->state == Socket::STATE_OPEN_WAIT_ARP ) )
    {
      ptr->addrPhy = addrPhy;
    }
    ptr = (Socket *)ptr->getNext();
  }
}


#line 18 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net/NetUDP.cpp"




cNetUDP::cNetUDP( cNetIP &ipIn ) 

: cNetTransport( ),
  ip( ipIn )

{
  ip.setUDP( this );

}


void cNetUDP::create( Socket &con, WORD payloadLen )
{
  cNetUDP_Msg &msg = *(cNetUDP_Msg*)ip.eth.buf;

  msg.udp.sourcePort = con.myPort;
  msg.udp.destPort   = con.remotePort;
  msg.udp.length     = sizeof( cNetUDP_Header ) + payloadLen;

  ip.create( con.addrPhy,
             con.addr,
             payloadLen,
             cNetIP::PROTOCOL_UDP );

  
  WORD  len = sizeof( cNetUDP_Header) + payloadLen;

  msg.udp.checksum = 0;
  msg.udp.checksum = Checksum( (BYTE*)&msg.ip.sourceAddr,
                                len + 8,
                                (DWORD)len + cNetIP::PROTOCOL_UDP );

  ip.eth.PacketSend( ip.eth.buf,
                     sizeof( cNetUDP_Msg) + payloadLen );
}





cNetUDP::Socket::Socket( cNetUDP         &udpIn,
                         cNetApplication &appIn,
                         cNetAddr<4>      inAddrIn,
                         WORD             portIn,
                         WORD             updateTime )

: cNetTransport::Socket( (cNetTransport &)udpIn,
                         appIn,
                         inAddrIn,
                         portIn,
                         updateTime ),
  udp( udpIn )
{
}



void cNetUDP::Socket::open( cNetAddr<4> addrIn,
                            WORD        portIn )
{
  addr = addrIn;
  remotePort = portIn;

  if( addrIn == broadcastAddr )
  {
    addrPhy = broadcastAddrPhy;
    state   = STATE_WAITING;
  }
  else
  {
    state = STATE_OPEN_WAIT_ARP;
    udp.ip.arp.request( addr );
  }
  setTimeout( 3 );
}


void cNetUDP::Socket::close( void )
{
  state = STATE_WAITING;
}


BYTE cNetUDP::Socket::isConnected( void )
{
  return( state == STATE_CONNECTED );
}


BYTE cNetUDP::Socket::isReady( void )
{
  return(    !(udp.ip.addr == zeroAddr)
          &&   state == STATE_WAITING );
}


void cNetUDP::Socket::clear( void )
{
  udp.ip.eth.plen = 0;
}


void cNetUDP::Socket::fillBuffer( const char c )
{
  WORD pos = sizeof( cNetUDP_Msg ) + udp.ip.eth.plen;

  if( pos < 1500 )
  {
    udp.ip.eth.buf[pos] = c;
    udp.ip.eth.plen++;
  }

  if( pos + 1 >= 1500 )
  {
    send( );
  }
}


void cNetUDP::Socket::send( void )
{
  udp.create( *this, udp.ip.eth.plen );

  udp.ip.eth.plen = 0;
}


BYTE cNetUDP::Socket::get( char *c )
{
  if( udp.inPos < udp.inBufLen )
  {
    *c = udp.buf[udp.inPos++];
    return( true );
  }
  return( false );
}


BYTE *cNetUDP::Socket::getDataPtr( void )
{
  return( (BYTE*)&udp.ip.eth.buf[ sizeof(cNetUDP_Msg) ] );
}


void cNetUDP::Socket::setDataLength( WORD len )
{
  udp.ip.eth.plen = len;
}



BYTE cNetUDP::Socket::process( void )
{
  cNetUDP_Msg &msg = *(cNetUDP_Msg*)udp.ip.eth.buf;

  if( !(myPort == msg.udp.destPort) )
  {
    return( false );
  }

  WORD  dataLen = msg.udp.length - sizeof(cNetUDP_Header);
  BYTE *dataPtr = 0;;

  if( dataLen > 0 )
  {
    WORD idx = sizeof( cNetUDP_Msg );
    dataPtr  = &udp.ip.eth.buf[ idx ];
  }

  if( state == STATE_WAITING
      && (   remoteAddr == broadcastAddr
          || remoteAddr == msg.ip.sourceAddr ) )
  {
    addrPhy = msg.eth.sourceAddr;
    addr    = msg.ip.sourceAddr;
    remotePort    = msg.udp.sourcePort;
    state   = STATE_CONNECTED;
  }
  if(    state == Socket::STATE_CONNECTED
      && dataLen > 0 )
  {
    udp.buf          = dataPtr;
    udp.inPos        = 0;
    udp.inBufLen     = dataLen;

    app.process();
  }

  return( true );
}


void cNetUDP::Socket::update( void )
{
  if(      state == STATE_OPEN_WAIT_ARP
      && !(addrPhy == zeroAddrPhy) )
  {
    state = STATE_CONNECTED;
  }

  if( updateTic && !(--updateTic) )
  {
    updateTic = updateTime;
    app.update();
  }
}


void cNetUDP::Socket::timeout( void )
{
  if( timeOutTic && !(--timeOutTic) )
  {
    app.timeout();

    switch( state )
    {
      case STATE_OPEN_WAIT_ARP:
        state = STATE_WAITING;
        break;
    }
  }

  
  
  
  
  
}


void cNetUDP::handleARP( cNetAddr<4> addr, cNetAddr<6> addrPhy )
{
  Socket *ptr = (Socket *)appList.getFirst();
  while( ptr )
  {
    if(    ptr->addr == addr
        && (   ptr->state == Socket::STATE_WAITING
            || ptr->state == Socket::STATE_OPEN_WAIT_ARP ) )
    {
      ptr->addrPhy = addrPhy;
    }
    ptr = (Socket *)ptr->getNext();
  }
}



#line 19 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Net.cpp"



#line 28 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Port.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Port.cpp"
















cHwPort::Pin::Pin( cHwPort &portIn, BYTE pinIdIn )

: port( portIn )

{
  pinId   = pinIdIn;
  pinMask = (1<<pinId);
}


cHwPort::Pin::Pin( cHwPort &portIn, BYTE pinIdIn, Mode mode )

: port( portIn )

{
  pinId   = pinIdIn;
  pinMask = (1<<pinId);

  port.setPinMode( pinId, mode );
}


#line 29 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/RTC.cpp"







 







cHwRTC::cHwRTC( void )
{
  
}


#line 30 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/SPImaster.cpp"







 







cHwSPImaster::cHwSPImaster( void )
{
  
}


BYTE cHwSPImaster::Device::transceive(  BYTE    data )
{
  cSystem::disableInterrupt();

  start();

  BYTE ret = spi.transceiveByte( data );
  stop();

  cSystem::enableInterrupt();
  return(ret);
}


void cHwSPImaster::Device::transceive( BYTE   *data, 
                                      WORD    size )
{
  cSystem::disableInterrupt();

  start();
  for( WORD i = 0; i < size; i++ )
  {
    data[i] = spi.transceiveByte(data[i]);
  }
  stop();

  cSystem::enableInterrupt();
}


inline BYTE cHwSPImaster::Device::read( void )
{
  return( transceive( ) );
}


inline void cHwSPImaster::Device::read( BYTE   *data, 
                                WORD    size )
{
  cSystem::disableInterrupt();

  start();
  for( WORD i = 0; i < size; i++ )
  {
    data[i] = spi.transceiveByte();
  }
  stop();

  cSystem::enableInterrupt();
}


inline void cHwSPImaster::Device::write( BYTE    data )
{
  transceive( data );
}


inline void cHwSPImaster::Device::write(  WORD    data )
{
  cSystem::disableInterrupt();

  start();
  spi.transceiveByte( data >> 8    );
  spi.transceiveByte( data &  0xFF );
  stop();

  cSystem::enableInterrupt();
}


inline void cHwSPImaster::Device::write(  BYTE   *data, 
                                 WORD    size )
{
  cSystem::disableInterrupt();

  start();
  for( WORD i = 0; i < size; i++ )
  {
    spi.transceiveByte( data[i] );
  }
  stop();

  cSystem::enableInterrupt();
}


inline void cHwSPImaster::Device::writeExt(   BYTE    bit9, 
                                    BYTE    data )
{
  cSystem::disableInterrupt();

  start();
  spi.transceiveByteExt( bit9, data );
  stop();

  cSystem::enableInterrupt();
}


inline void cHwSPImaster::Device::writeExt(   BYTE    bit, 
                                    WORD    data )
{
  cSystem::disableInterrupt();

  start();
  spi.transceiveByteExt( bit, data>>8 );
  spi.transceiveByteExt( bit, data &  0xFF );
  stop();

  cSystem::enableInterrupt();
}


#line 31 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/SPIslave.cpp"





 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/SPIslave.h"





 






















 
class cHwSPIslave
{
  public:














 
class DataHandler
{
  public:
    
    






 
    virtual BYTE transceive( BYTE data ) = 0;

}; 
     
protected:
    
    
    
    
    
    cHwSPIslave( DataHandler &handler );
    
  protected:
    
    DataHandler &handler;
   
}; 

#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/SPIslave.cpp"







cHwSPIslave::cHwSPIslave( cHwSPIslave::DataHandler &handlerIn )

: handler( handlerIn )

{
}


#line 32 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Timer.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Timer.cpp"







DWORD cHwTimer::getCycleTime( void )
{
  return( cycleTime );
}


void cHwTimer::add( cList::Item *ptr )
{
  isrList.add( ptr );
}


inline void cHwTimer::isrHandler( void )
{
  isrList.updateAll();
}


#line 33 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/Touch.cpp"





 







cHwTouch::cHwTouch( WORD widthIn, 
                    WORD heightIn )
{
  width  = widthIn;
  height = heightIn;
  xPos   = 0;
  yPos   = 0;
  isTouchedFlag = false;
}


inline WORD cHwTouch::getPosX( void )
{
  return( xPos );
}


inline WORD cHwTouch::getPosY( void )
{
  return( yPos );
}


inline BYTE cHwTouch::isTouched( void )
{
  return( isTouchedFlag );
}


#line 34 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/UART.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/UART.cpp"







cHwUART::cHwUART( BYTE sizeRxBuf, BYTE sizeTxBuf )

: dataRxBuf( sizeRxBuf ), 
  dataTxBuf( sizeTxBuf )

{
  txReady = true;
}


inline void cHwUART::isrRx( void )
{
  BYTE data = getByte(); 

  dataRxBuf << data;     
}


inline void cHwUART::isrTx( void )
{
  BYTE data = 0;

  if( !dataTxBuf.isEmpty() ) 
  {
    dataTxBuf >> data;       
    txReady = false;         
                             
                             
    setByte( data );         
  }
  else
  {
    txReady = true;          
  }
}


void cHwUART::transmitByte( BYTE data )
{
  while( dataTxBuf.isFull() ) 
  {
    if( txReady )             
                              
                              
    {
      isrTx();                
    }
                              
                              
  }

  dataTxBuf << data;          

  if( txReady )               
                              
  {
    isrTx();
  }
}


void cHwUART::set( BYTE data )
{
  transmitByte( data );
}


void cHwUART::set( const BYTE *data, BYTE length )
{
  while( length-- )
  {
    transmitByte( *(data++ ) ); 
  }
}


void cHwUART::set( const char *str )
{
  while( *str )       
  {
    transmitByte( *(str++ ) ); 
  }
}

inline bool cHwUART::isTxBufferFull( void )
{
  return( dataTxBuf.isFull() );
}


bool cHwUART::get( BYTE *data )
{
  BYTE tmp = 0;

  if( dataRxBuf >> tmp )   
  {
    *data = tmp;           
    return( true );        
  }
  else
  {
    return( false );       
  }
}


#line 35 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.cpp"











 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBhardware.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBhardware.cpp"







cHwUSB::cHwUSB( cHwUSBdesc &descIn )

:desc( descIn ),
 epCtrl( *this )

{
}


void cHwUSB::eventHandler( BYTE epAddr, BYTE isSetup )
{
  cHwUSBendpoint *ptr = 0;
  
  switch( epAddr )
  {
    case 0x00: 
      if( isSetup )
      {
        epCtrl.setup();
      }
      else
      {
        epCtrl.out();
      }
      break;
      
    case 0x80: 
      epCtrl.in();
      break;
    
    default:
      if( (ptr = desc.getEndpoint( epAddr )) != 0 )
      {
        if( epAddr & 0x80 ) 
        {
          ptr->in();
        }
        else  
        {
          ptr->out();
        }
      }
      break;
  }
}  


#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBctrl.cpp"









 


#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBctrl.cpp"







cHwUSBctrl::cHwUSBctrl(cHwUSB &usbPtr)

: usb  ( usbPtr ),
  epIN ( usbPtr, 0x80, usb.desc.getMaxPacketSize0() ),
  epOUT( usbPtr, 0x00, usb.desc.getMaxPacketSize0() )

{
  DeviceStatus = usb.desc.getConfigDeviceStatus( 1 );
}




void cHwUSBctrl::setup()
{
  WORD cnt = usb.readEP( 0x00, (BYTE *)&setupData, sizeof(setupData) );
                      

  if( cnt ==  sizeof( setupData ) )
  {
    switch( setupData.reqRecipient() )
    {
      case REQ_RECIPIENT_DEVICE:     ReqDevice   (); return;
      case REQ_RECIPIENT_INTERFACE:  ReqInterface(); return;
      case REQ_RECIPIENT_ENDPOINT:   ReqEndpoint (); return;
    }
  }
  Stall();
}


void cHwUSBctrl::in()
{
  
  {
    switch(setupData.reqRecipient())
    {
      case REQ_RECIPIENT_DEVICE:    epIN.writeData(); return;
      case REQ_RECIPIENT_INTERFACE: epIN.inCtrl();    return;
      case REQ_RECIPIENT_ENDPOINT:                    return;
    }
  }
}


void cHwUSBctrl::out()
{
  if( setupData.reqDir() == REQ_DIR_HOST_TO_DEVICE )
  {
    switch( setupData.reqRecipient() )
    {
      case REQ_RECIPIENT_DEVICE:                     return;
      case REQ_RECIPIENT_INTERFACE: epOUT.outCtrl(); return;
      case REQ_RECIPIENT_ENDPOINT:                   return;
    }
  }
}





__inline void cHwUSBctrl::ReqDevice()
{
  switch( setupData.reqType() )
  {
    case REQ_TYPE_STANDARD:
      switch( setupData.request() )
      {
        case REQUEST_GET_STATUS:        ReqDeviceStd_GetStatus();        return;
        case REQUEST_CLR_FEATURE:       break;                           
        case REQUEST_RESERVED_0:        break;                           
        case REQUEST_SET_FEATURE:       break;                           
        case REQUEST_RESERVED_1:        break;                           
        case REQUEST_SET_ADDRESS:       ReqDeviceStd_SetAddress();       return;
        case REQUEST_GET_DESCRIPTOR:    ReqDeviceStd_GetDescriptor();    return;
        case REQUEST_SET_DESCRIPTOR:    break;                           
        case REQUEST_GET_CONFIGURATION: ReqDeviceStd_GetConfiguration(); return;
        case REQUEST_SET_CONFIGURATION: ReqDeviceStd_SetConfiguration(); return;
        case REQUEST_GET_INTERFACE:     break;                           
        case REQUEST_SET_INTERFACE:     break;                           
        case REQUEST_SYNC_FRAME:        break;                           
      }
      break;

    case REQ_TYPE_CLASS:
      break;

    case REQ_TYPE_VENDOR:
      break;
  }
  Stall();
}


__inline void cHwUSBctrl::ReqInterface()
{
  switch( setupData.reqType() )
  {
    case REQ_TYPE_STANDARD:
      switch( setupData.request() )
      {
        case REQUEST_GET_STATUS:        ReqInterfaceStd_GetStatus();     return;
        case REQUEST_CLR_FEATURE:       break;                           
        case REQUEST_RESERVED_0:        break;                           
        case REQUEST_SET_FEATURE:       break;                           
        case REQUEST_RESERVED_1:        break;                           
        case REQUEST_SET_ADDRESS:       break;                           
        case REQUEST_GET_DESCRIPTOR:    ReqInterfaceStd_GetDescriptor(); return;
        case REQUEST_SET_DESCRIPTOR:    break;                           
        case REQUEST_GET_CONFIGURATION: break;                           
        case REQUEST_SET_CONFIGURATION: break;                           
        case REQUEST_GET_INTERFACE:     ReqInterfaceStd_GetInterface();  return;
        case REQUEST_SET_INTERFACE:     ReqInterfaceStd_SetInterface();  return;
        case REQUEST_SYNC_FRAME:        break;                           
      }
      break;

    case REQ_TYPE_CLASS: 
      ReqInterfaceClass(); return;

    case REQ_TYPE_VENDOR:
      break;
  }
  Stall();
}


__inline void cHwUSBctrl::ReqEndpoint()
{
  switch( setupData.reqType() )
  {
    case REQ_TYPE_STANDARD:
      switch( setupData.request() )
      {
        case REQUEST_GET_STATUS:        break;                        
        case REQUEST_CLR_FEATURE:       ReqEndpointStd_ClrFeature();     return;
        case REQUEST_RESERVED_0:        break;                        
        case REQUEST_SET_FEATURE:       ReqEndpointStd_SetFeature();     return;
        case REQUEST_RESERVED_1:        break;                        
        case REQUEST_SET_ADDRESS:       break;                        
        case REQUEST_GET_DESCRIPTOR:    break;                        
        case REQUEST_SET_DESCRIPTOR:    break;                        
        case REQUEST_GET_CONFIGURATION: break;                        
        case REQUEST_SET_CONFIGURATION: break;                        
        case REQUEST_GET_INTERFACE:     break;                        
        case REQUEST_SET_INTERFACE:     break;                        
        case REQUEST_SYNC_FRAME:        break;                        
      }
      break;

    case REQ_TYPE_CLASS:
      break;

    case REQ_TYPE_VENDOR:
      break;
  }
  Stall();
}





__inline void cHwUSBctrl::ReqDeviceStd_GetStatus( void )
{
  epIN.writeData( cDataPointer( (BYTE*)&DeviceStatus, setupData.length()) );
}


__inline void cHwUSBctrl::ReqDeviceStd_SetAddress( void )
{
  usb.setAddress( setupData.valueLow() );
}


__inline void cHwUSBctrl::ReqDeviceStd_GetDescriptor( void )
{
  switch( setupData.valueHigh() )
  {
    case cHwUSBdesc::DEVICE_DESCRIPTOR:
      epIN.writeDataLen( usb.desc.getDescriptorDevice(),
                         setupData.length() );
      return;

    case cHwUSBdesc::CONFIGURATION_DESCRIPTOR:
      epIN.writeDataLen( usb.desc.getDescriptorConfig( setupData.valueLow() + 1 ),
                         setupData.length() );
      return;

    case cHwUSBdesc::STRING_DESCRIPTOR:
      epIN.writeDataLen( usb.desc.getDescriptorString( setupData.valueLow() ),
                         setupData.length() );
       return;
  }
  Stall();
}


__inline void cHwUSBctrl::ReqDeviceStd_GetConfiguration( void )
{
  epIN.writeData(cDataPointer( (BYTE*)&Configuration,
                               setupData.length()) );
}


 __inline void cHwUSBctrl::ReqDeviceStd_SetConfiguration( void )
{
  cHwUSBdesc::cEndpoint *epDesc   = 0;
  cHwUSBendpoint        *ep       = 0;
  BYTE                   configId = setupData.valueLow();

  if( (void *)usb.desc.getDescriptorConfig( configId ) != 0 )
  {
    Configuration = configId;
    usb.configure(true);

    DeviceStatus = usb.desc.getConfigDeviceStatus( configId );

    
    for( WORD i = 0;
         (void *)usb.desc.getDescriptorInterface( configId, i ) != 0;
         i++ )
    {
      for( WORD e=0;
           (epDesc = usb.desc.getDescriptorEndpoint( configId, i, e )) != 0;
           e++ )
      {
        if( (ep = usb.desc.getEndpoint( epDesc->bEndpointAddress )) !=0 )
        {
          ep->setConfiguration();
        }
      }
    }
    epIN.writeAcknowledge();
  }
  else
  {
    Configuration = 0;
    usb.configure(false);
    Stall();
  }
}





 __inline void cHwUSBctrl::ReqInterfaceStd_GetStatus( void )
{
  
  Stall();
}


 __inline void cHwUSBctrl::ReqInterfaceStd_GetDescriptor( void )
{

  cHwUSBinterf *interf
    = usb.desc.getInterface( setupData.valueLow()+1,  
                             setupData.indexLow() );  
  if( interf )
  {
    epIN.writeDataLen( interf->GetDescriptor( setupData.value() ),
                       setupData.length() );
    return;
  }
  Stall();
}


 __inline void cHwUSBctrl::ReqInterfaceStd_GetInterface( void )
{
  
  Stall();
}


 __inline void cHwUSBctrl::ReqInterfaceStd_SetInterface( void )
{
  
  Stall();
}


 __inline void cHwUSBctrl::ReqInterfaceClass( void )
{
  cDataPointer tmp;

  cHwUSBinterf *interfTmp
    = usb.desc.getInterface( 1, setupData.indexLow() );

  if( interfTmp )
  {
    switch( setupData.reqDir() )
    {
      case REQ_DIR_DEVICE_TO_HOST:
        if( interfTmp->requestCtrlIN( tmp,
                                  setupData.request(),
                                  setupData.value(),
                                  setupData.length() ))
        {
          epIN.interf = interfTmp;
          epIN.epData = tmp;
          epIN.writeData();
          return;
        }
        break;
      case REQ_DIR_HOST_TO_DEVICE:
        if( interfTmp->requestCtrlOUT( tmp,
                                  setupData.request(),
                                  setupData.value(),
                                  setupData.length() ))
        {
          epOUT.interf = interfTmp;
          epOUT.epData = tmp;
          epIN.writeAcknowledge(); 
          return;
        }
        break;
    }
  }

  Stall();
}





__inline void cHwUSBctrl::ReqEndpointStd_ClrFeature ( void )
{
  cHwUSBendpoint *ep = usb.desc.getEndpoint( setupData.indexLow() );

  if( ep && Configuration > 0)
  {
    switch( setupData.value() )
    {
      case FEATURE_BIT_ENDPOINT_STALL:
        ep->clrStall();
        ep->clrFeature();
        epIN.writeAcknowledge();
        return;
    }
  }
  Stall();
}


__inline void cHwUSBctrl::ReqEndpointStd_SetFeature ( void )
{
  cHwUSBendpoint *ep = usb.desc.getEndpoint( setupData.indexLow() );

  if( ep && Configuration > 0 ) 
  {
    switch( setupData.valueLow() )
    {
      case FEATURE_BIT_ENDPOINT_STALL:
        ep->stall();
        epOUT.writeAcknowledge();
        return;
    }
  }
  Stall();
}





__inline void cHwUSBctrl::Stall( void )
{
  epIN.stall();
}


#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBdesc.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBdesc.cpp"







cDataPointer cHwUSBdesc::getDescriptorDevice( void )
{
  WORD id  = getId( DEVICE, 0, 0, 0 );
  
  cHwUSBdesc::cDevice *ptr 
    = (cHwUSBdesc::cDevice *)getDescriptor( id );
  
  if( ptr )
  {
    return( cDataPointer( (BYTE*)ptr, ptr->bLength ) );
  }
  return( cDataPointer() );
}


cDataPointer cHwUSBdesc::getDescriptorConfig( BYTE confId )
{
  WORD id = getId( CONFIG, confId, 0, 0 );
  
  cHwUSBdesc::cConfiguration *ptr 
    = (cHwUSBdesc::cConfiguration *)getDescriptor( id );
  
  if( ptr )
  {
    return( cDataPointer( (BYTE*)ptr, ptr->wTotalLength ) );
  }
  return( cDataPointer() );
}


cDataPointer cHwUSBdesc::getDescriptorInterface( BYTE confId, 
                                                 BYTE interfId )
{
  WORD id = getId( INTERF, confId, interfId, 0 );
  
  cHwUSBdesc::cInterface *ptr 
    = (cHwUSBdesc::cInterface *)getDescriptor( id );

  if( ptr )
  {
    return( cDataPointer( (BYTE*)ptr, ptr->bLength ) );
  }
  return( cDataPointer() );
}


cDataPointer cHwUSBdesc::getDescriptorEndpoint( BYTE confId, 
                                                BYTE interfId, 
                                                BYTE epId )
{
  WORD id = getId( ENDPOINT, confId, interfId, epId );
  
  cHwUSBdesc::cEndpoint *ptr 
    = (cHwUSBdesc::cEndpoint *)getDescriptor( id );

  if( ptr )
  {
    return( cDataPointer( (BYTE*)ptr, ptr->bLength ) );
  }
  return( cDataPointer() );
}


cDataPointer cHwUSBdesc::getDescriptorHID( BYTE confId, 
                                           BYTE interfId, 
                                           BYTE hidId )
{
  WORD id = getId( CLASS, confId, interfId, hidId );
  
  cHwUSBdesc::cHID *ptr 
    = (cHwUSBdesc::cHID *)getDescriptor( id );

  if( ptr )
  {
    return( cDataPointer( (BYTE*)ptr, ptr->bLength ) );
  }
  return( cDataPointer() );
}


cDataPointer cHwUSBdesc::getDescriptorHIDreport( BYTE confId, 
                                                 BYTE interfId, 
                                                 BYTE hidId )
{
  WORD id = getId( REPORT, confId, interfId, hidId );
  
  cHwUSBdesc::cReport *ptr 
    = (cHwUSBdesc::cReport *)getDescriptor( id );

  if( ptr )
  {
    return( cDataPointer( (BYTE*)ptr+2, ptr->bLength-2 ) );  
  }
  return( cDataPointer() );
}


cDataPointer cHwUSBdesc::getDescriptorString( BYTE strId )
{
  WORD id = getId( STRING, 0, 0, strId );
  
  cHwUSBdesc::cString *ptr 
    = (cHwUSBdesc::cString *)getDescriptor( id );

  if( ptr )
  {
    return( cDataPointer( (BYTE*)ptr, ptr->bLength ) ); 
  }
  return( cDataPointer() );
}


BYTE cHwUSBdesc::getMaxPacketSize0( void )
{
  cHwUSBdesc::cDevice *ptr 
    = (cHwUSBdesc::cDevice *)cHwUSBdesc::getDescriptorDevice();
  
  if( ptr )
    return( ptr->bMaxPacketSize0 );
  return( 0 );
}


BYTE cHwUSBdesc::getConfigDeviceStatus( BYTE confId )
{
  cHwUSBdesc::cConfiguration *ptr 
    = (cHwUSBdesc::cConfiguration *)cHwUSBdesc::getDescriptorConfig( confId );

  BYTE ret = 0;

  if( ptr )
  {
    if( ptr->bmAttributes & 0x40 )
    {
      ret |= 0x01;
    }
    if( ptr->bmAttributes & 0x20 )
    {
      ret |= 0x02;
    }
  }
  return( ret );      
}


#line 18 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBendpoint.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBendpoint.cpp"







cHwUSBendpoint::cHwUSBendpoint( cHwUSB       &usbIn, 
                                cHwUSBinterf *interfIn,
                                BYTE          idIn, 
                                WORD          maxPacketSizeIn,
                                BYTE          attributesIn )
: usb( usbIn )
{
  interf        = interfIn;
  id            = idIn;
  maxPacketSize = maxPacketSizeIn;
  attributes    = attributesIn;
}


cHwUSBendpoint::cHwUSBendpoint( cHwUSB &usbIn, 
                                BYTE    idIn, 
                                WORD    maxPacketSizeIn )
: usb( usbIn )
{
  interf        = 0;
  id            = idIn;
  maxPacketSize = maxPacketSizeIn;
  attributes    = cHwUSBdesc::CONTROL_ENDPOINT;
}


void cHwUSBendpoint::in( void )
{
  if( interf && epData.isEmpty() )
  {
    interf->transmit( id, epData );
  }
  
  if( !epData.isEmpty() )
  {
    writeData( ); 
  }
}


void cHwUSBendpoint::inCtrl( void )
{
  writeData();
  if( epData.getSize() == 0 && interf )
  {
    interf->transmit( id, epData );
  }
}



void cHwUSBendpoint::out( void )
{
  WORD cnt = 0;
  
  if( interf ) 
  {
    interf->request( id, epData );
  }
  
  cnt = readData( );

  if( interf ) 
  {
    if( interf->receive( id, cnt ) != true)
    {
      stall();
    }
  }





}
    


void cHwUSBendpoint::outCtrl( void )
{
  WORD cnt = readData( );
  if( interf ) 
  {
    if( interf->receive( 0x00, cnt ) )
    {
      writeAcknowledge();
    }
    else
    {
      stall();
    }
  }
}


WORD cHwUSBendpoint::readData( void ) 
{
  WORD cnt = usb.readEP( id,  
                         epData.getPtr(), 
                         epData.getSize() );
  
  epData.shift( cnt );
  
  return( cnt );
}


void cHwUSBendpoint::writeData( void )
{
  WORD cnt = usb.writeEP( id, 
                          epData.getPtr(), 
                          MIN( epData.getSize(), 
                               maxPacketSize ) );
  
  epData.shift( cnt ); 
}


void cHwUSBendpoint::writeData( const cDataPointer &epDataIn )
{
  epData.set( epDataIn );
  writeData();
}


void cHwUSBendpoint::writeDataLen( const cDataPointer &epDataIn, 
                                   WORD                maxLen )
{
  cDataPointer tmp( epDataIn );
   
  epData.set( tmp.getPtr(), MIN( tmp.getSize(), maxLen ));
  writeData();
}


void cHwUSBendpoint::writeAcknowledge( void ) 
{
  usb.writeEP( id, 0, 0 );
}


void cHwUSBendpoint::readAcknowledge( void ) 
{
  BYTE buffer;

  usb.readEP( id, &buffer, 1 );
}


void cHwUSBendpoint::setConfiguration( void ) 
{
  usb.configEP( id, maxPacketSize, attributes );
}


void cHwUSBendpoint::stall( void )
{
  usb.setStallEP( id );
}


void cHwUSBendpoint::clrStall( void )
{
  usb.clrStallEP( id );
}


void cHwUSBendpoint::clrFeature( void )
{
  if( interf )
  {
    interf->clrFeature();
  }
}


#line 19 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBinterf.cpp"







 

#line 11 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB/USBinterf.cpp"







cHwUSBinterf::cHwUSBinterf( cHwUSB &usbIn, 
                            BYTE    configIdIn, 
                            BYTE    interfIdIn )

:usb(usbIn)

{
  configId = configIdIn;
  interfId = interfIdIn;
  
  cHwUSBdesc::cEndpoint  *epDesc = 0;
  
  usb.desc.registerInterface( configId, interfId, this );
  
  for( WORD e = 0;
       (epDesc = usb.desc.getDescriptorEndpoint( configId, interfId, e )) != 0;
       e++ )
  {
    cHwUSBendpoint *ptr = new cHwUSBendpoint( usb, 
                        this, 
                        epDesc->bEndpointAddress,
                        epDesc->wMaxPacketSize,
                        epDesc->bmAttributes );
                        
    usb.desc.registerEndpoint( epDesc->bEndpointAddress, ptr );
                  
    
    if( (epDesc->bEndpointAddress & 0x80) && !epIN && ptr )  
    {
      epIN = ptr;
    }      
    if( !(epDesc->bEndpointAddress & 0x80) && !epOUT && ptr )
    {
      epOUT = ptr;
    }      
  } 
}
  


#line 20 "..\\EmbSysLib\\Lib\\Src\\Hardware/Common/USB.cpp"


#line 36 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.cpp"









 





#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"











 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/System.cpp"









 


#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/System.cpp"


#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/System.cpp"












unsigned char cSystem::cntInterrupt = 0;


cSystem::cSystem( unsigned char disableInterrupts )
{
  disableWatchdog();
  if( disableInterrupts )
  {
    disableInterrupt();
  }
}


void cSystem::start( void )
{
  enableInterrupt();
}


void cSystem::disableInterrupt( void )
{
  __disable_irq();
  cntInterrupt++;
}


void cSystem::enableInterrupt( void )
{
  if(cntInterrupt > 0)
  {
    cntInterrupt--;
  }
  if(cntInterrupt == 0)
  {
     __enable_irq();
  }
}


void cSystem::enterISR( void )
{
  cntInterrupt++;
}


void cSystem::leaveISR( void )
{
  if( cntInterrupt > 0 )
  {
    cntInterrupt--;
  }
}


void cSystem::enableWatchdog( MODE mode )
{
  DWORD pr  = 0;
  DWORD rlr = 0;

  
  switch( mode )
  {
    default:
    case WD_TIMEOUT_16ms:   pr = 0; rlr =  160; break; 
    case WD_TIMEOUT_32ms:   pr = 0; rlr =  320; break; 
    case WD_TIMEOUT_65ms:   pr = 0; rlr =  650; break; 
    case WD_TIMEOUT_130ms:  pr = 0; rlr = 1300; break; 
    case WD_TIMEOUT_260ms:  pr = 0; rlr = 2600; break; 
    case WD_TIMEOUT_520ms:  pr = 1; rlr = 2600; break; 
    case WD_TIMEOUT_1000ms: pr = 2; rlr = 2500; break; 
    case WD_TIMEOUT_2000ms: pr = 3; rlr = 2500; break; 
  }

  ((IWDG_TypeDef *) (((uint32_t)0x40000000) + 0x3000))->KR  = 0x5555;
  ((IWDG_TypeDef *) (((uint32_t)0x40000000) + 0x3000))->PR  = pr;
  ((IWDG_TypeDef *) (((uint32_t)0x40000000) + 0x3000))->KR  = 0x5555;
  ((IWDG_TypeDef *) (((uint32_t)0x40000000) + 0x3000))->RLR = rlr;
  ((IWDG_TypeDef *) (((uint32_t)0x40000000) + 0x3000))->KR  = 0xAAAA;
  ((IWDG_TypeDef *) (((uint32_t)0x40000000) + 0x3000))->KR  = 0xCCCC;
}


void cSystem::disableWatchdog( void )
{
  
}


void cSystem::feedWatchdog( void )
{
  ((IWDG_TypeDef *) (((uint32_t)0x40000000) + 0x3000))->KR  = 0xAAAA;
}


void cSystem::reset( void )
{
  __dsb(0xF);
  *((unsigned long *)(0x2000FFF0)) = 0xDEADBEEF;
  NVIC_SystemReset();
}


void cSystem::delayMicroSec( unsigned short delay )
{
  
  delay *= 16.5;
  for(;delay>0;delay--)
  {

  }
}


void cSystem::delayMilliSec( unsigned short delay )
{
  for(;delay>0;delay--)
    delayMicroSec(1000);
}












 
void SystemInit( void )
{
  


    
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->CPACR |=   (3UL << 10*2)  
                  | (3UL << 11*2); 



  
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR |= ((uint32_t)0x00000001);

  
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CFGR = 0x00000000;       

  
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR &= ~(   ((uint32_t)0x01000000)  
                | ((uint32_t)0x00080000)
                | ((uint32_t)0x00010000) );

  
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR = 0x24003010;   
                               

  
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR &= ~(((uint32_t)0x00040000)); 

  
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CIR = 0;                

  



    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR |= (((uint32_t)0x00010000) );



  

  
  
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR |= ((uint32_t)0x00000001);   

  
  for( unsigned i = 0; i < (0x05000); i++ )
  {
    if( ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR & ((uint32_t)0x00020000) )
      break;
  }

  if( ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR & ((uint32_t)0x00020000) )
  {
    
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->ACR =   ((uint32_t)0x00000200)          
                 | ((uint32_t)0x00000400)          
                 | ((uint32_t)0x00000005);  

    
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x10000000);    

    
    ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR   |= ((uint32_t)0x0000C000);                 
                                          

    
    
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CFGR |=   ((uint32_t)0x00000000)     
                 | ((uint32_t)0x00008000)    
                                          
                 | ((uint32_t)0x00001400);   
                                          

    
    


















 
    

    
    
    
    
		
		const DWORD pll_M = 8; 
    const DWORD pll_N = 336;               
    const DWORD pll_P = 2;                 
    const DWORD pll_Q = 7;                 

    
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR =   ((uint32_t)0x00400000)
                   | ( pll_M           )
                   | ( pll_N      <<  6)
                   | ((pll_P/2-1) << 16)
                   | ( pll_Q      << 24);

    
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR |= ((uint32_t)0x01000000);            
    while( !(((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CR & ((uint32_t)0x02000000)) );

    
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CFGR &= ~((uint32_t)0x00000003);          
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CFGR |=  ((uint32_t)0x00000002);      
                                        

    
    while( (((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CFGR & ((uint32_t)0x0000000C)) != ((uint32_t)0x00000008) );
  }
  else
  {
    
  }

  
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR = ((uint32_t)0x08000000) | 0x00; 
}


#line 16 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/PinConfig.cpp"







 







void cHwPinConfig::set( GPIO_TypeDef *gpio, BYTE pinId, DWORD mode, BYTE af )
{
  BYTE pin2 = 2*pinId;
  BYTE pin3 = pinId>>3;

  MTYPE bitmask1 = ~((MTYPE)0x01 <<     pinId    );
  MTYPE bitmask2 = ~((MTYPE)0x03 <<     pin2     );
  MTYPE bitmask3 = ~((MTYPE)0x0F << (4*(pinId%8)));

  MTYPE moder   = (MTYPE)((mode    )&0x03) << pin2;
  MTYPE pupdr   = (MTYPE)((mode>> 8)&0x03) << pin2;
  MTYPE otyper  = (MTYPE)((mode>> 4)&0x01) << pinId;
  MTYPE ospeedr = (MTYPE)((mode>>12)&0x03) << pin2;
  MTYPE afr     = (MTYPE)((af      )&0x0F) << (4*(pinId%8));

  cSystem::disableInterrupt();
  gpio->MODER     = ( gpio->MODER     & bitmask2 ) | moder;
  gpio->PUPDR     = ( gpio->PUPDR     & bitmask2 ) | pupdr;
  gpio->OTYPER    = ( gpio->OTYPER    & bitmask1 ) | otyper;
  gpio->OSPEEDR   = ( gpio->OSPEEDR   & bitmask2 ) | ospeedr;
  gpio->AFR[pin3] = ( gpio->AFR[pin3] & bitmask3 ) | afr;
  cSystem::enableInterrupt();
}


bool cHwPinConfig::set( Function func, DWORD mode )
{
  BYTE port;
  BYTE pin;
  BYTE af;

  GPIO_TypeDef *gpio;

  for( WORD i = 0; table[i] != END_OF_TABLE; i++ )
  {
    if( (table[i] >> 16) == func )
    {
      port = (table[i]>>12)&0x0F;
      pin  = (table[i]>> 4)&0x0F;
      af   = (table[i]>> 0)&0x0F;

      if( (mode & 0x0F) != ANALOG )
      {
        mode |= ALTERNATE_FUNC;
      }

      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << port) );

      gpio = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x0000) + (0x400*port));
      set( gpio, pin, mode, af );
      return( true );
    }
  }
  
  return( false );
}


#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/RTOS_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/RTOS_MCU.cpp"







DWORD (*cHwRTOS_MCU::schedule)( DWORD sp, BYTE flag ) = 0;

unsigned long  cHwRTOS_MCU::sysTic     = 0;
unsigned       cHwRTOS_MCU::sysTicTime = 0;


cHwRTOS_MCU::cHwRTOS_MCU( void )
{
}


extern "C"
{
  unsigned save_context( void         );
  void     load_context( unsigned ptr );
}



  #pragma push
  #pragma O0
#line 46 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Sys/RTOS_MCU.cpp"



extern "C"
{
  void SysTick_Handler( void )
  {
    static unsigned stackPointer = 0;

    stackPointer = save_context();
    cHwRTOS_MCU::sysTic++;
    stackPointer = cHwRTOS_MCU::schedule( stackPointer, true );
    load_context( stackPointer );
  }
}


extern "C"
{
  void PendSV_Handler( void )
  {
    static unsigned stackPointer = 0;

    stackPointer = save_context();
    stackPointer = cHwRTOS_MCU::schedule( stackPointer, false );
    load_context( stackPointer );
  }
}



  #pragma pop








#line 18 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"


#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/ADC_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/ADC_MCU.cpp"







cHwADC *cHwADC_0::adcPtr = 0;


cHwADC_0::cHwADC_0( cHwTimer *tPtrIn )

: cHwADC( 16, tPtrIn )

{
  adcPtr = this;

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00000100);

  ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x2000))->CR2 |=    ((uint32_t)0x00000001)  
               | !((uint32_t)0x00000002)  
               |  ((uint32_t)0x00000800);

  ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x2000))->CR1 |=    ((uint32_t)0x00000020); 



  NVIC_EnableIRQ( ADC_IRQn );
}


void cHwADC_0::configCh( BYTE ch )
{
  switch( ch )
  {
    default:
      
      break;
    case  0: cHwPinConfig::set( cHwPinConfig::ADC123_IN0,  cHwPinConfig::ANALOG ); break;
    case  1: cHwPinConfig::set( cHwPinConfig::ADC123_IN1,  cHwPinConfig::ANALOG ); break;
    case  2: cHwPinConfig::set( cHwPinConfig::ADC123_IN2,  cHwPinConfig::ANALOG ); break;
    case  3: cHwPinConfig::set( cHwPinConfig::ADC123_IN3,  cHwPinConfig::ANALOG ); break;
    case  4: cHwPinConfig::set( cHwPinConfig::ADC12_IN4,   cHwPinConfig::ANALOG ); break;
    case  5: cHwPinConfig::set( cHwPinConfig::ADC12_IN5,   cHwPinConfig::ANALOG ); break;
    case  6: cHwPinConfig::set( cHwPinConfig::ADC12_IN6,   cHwPinConfig::ANALOG ); break;
    case  7: cHwPinConfig::set( cHwPinConfig::ADC12_IN7,   cHwPinConfig::ANALOG ); break;
    case  8: cHwPinConfig::set( cHwPinConfig::ADC12_IN8,   cHwPinConfig::ANALOG ); break;
    case  9: cHwPinConfig::set( cHwPinConfig::ADC12_IN9,   cHwPinConfig::ANALOG ); break;
    case 10: cHwPinConfig::set( cHwPinConfig::ADC123_IN10, cHwPinConfig::ANALOG ); break;
    case 11: cHwPinConfig::set( cHwPinConfig::ADC123_IN11, cHwPinConfig::ANALOG ); break;
    case 12: cHwPinConfig::set( cHwPinConfig::ADC123_IN12, cHwPinConfig::ANALOG ); break;
    case 13: cHwPinConfig::set( cHwPinConfig::ADC123_IN13, cHwPinConfig::ANALOG ); break;
    case 14: cHwPinConfig::set( cHwPinConfig::ADC3_IN14,   cHwPinConfig::ANALOG ); break;
    case 15: cHwPinConfig::set( cHwPinConfig::ADC3_IN15,   cHwPinConfig::ANALOG ); break;

  }
}


inline WORD cHwADC_0::getResult( void )
{
  return( ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x2000))->DR & 0xFFFF );
}


inline void cHwADC_0::startCh( BYTE ch )
{
  
  ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x2000))->SQR3 = ch & 0x1F;

  ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x2000))->CR2 |= ((uint32_t)0x40000000);
}


extern "C"
{
  void ADC_IRQHandler(void)
  {
    ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x2000))->SR &= ~((uint32_t)0x00000002);
    cHwADC_0::adcPtr->isr();
  }
}


#line 21 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/DAC_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/DAC_MCU.cpp"







cHwDAC_0::cHwDAC_0( void )

: cHwDAC( 2 )

{
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x20000000);
}


inline void cHwDAC_0::set( WORD value, BYTE ch )
{
  switch( ch )
  {
    default:
      
      break;
    case 0: ((DAC_TypeDef *) (((uint32_t)0x40000000) + 0x7400))->DHR12L1 = value & 0xFFF0; break;
    case 1: ((DAC_TypeDef *) (((uint32_t)0x40000000) + 0x7400))->DHR12L2 = value & 0xFFF0; break;
  }
}


inline void cHwDAC_0::enable( BYTE ch )
{
  switch( ch )
  {
    default:
      
      break;
    
    case 0: 
      cHwPinConfig::set( cHwPinConfig::DAC1_OUT, cHwPinConfig::ANALOG );
      ((DAC_TypeDef *) (((uint32_t)0x40000000) + 0x7400))->CR |=   ((uint32_t)0x00000001)
                 | ((uint32_t)0x00000002);
      break;
    
    case 1:
      cHwPinConfig::set( cHwPinConfig::DAC1_OUT, cHwPinConfig::ANALOG );
      ((DAC_TypeDef *) (((uint32_t)0x40000000) + 0x7400))->CR |=   ((uint32_t)0x00010000)
                 | ((uint32_t)0x00020000); 
      break;
  }
}


#line 22 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Encoder_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Encoder_MCU.cpp"







cHwEncoder_N::cHwEncoder_N( TimerId timerId,
                            Mode    mode )
                            
: cHwEncoder( mode )                            
{
  switch( timerId )
  {  
    default:
      
      break;

    case TIM_2: 
      ptr           = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000));
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000001);

      cHwPinConfig::set( cHwPinConfig::TIM2_CH1 );
      cHwPinConfig::set( cHwPinConfig::TIM2_CH2 );
      break;

    case TIM_3: 
      ptr           = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0400));
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000002);

      cHwPinConfig::set( cHwPinConfig::TIM3_CH1 );
      cHwPinConfig::set( cHwPinConfig::TIM3_CH2 );
      break;

    case TIM_4: 
      ptr           = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800));
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000004);

      cHwPinConfig::set( cHwPinConfig::TIM4_CH1 );
      cHwPinConfig::set( cHwPinConfig::TIM4_CH2 );
      break;

    case TIM_5: 
      ptr           = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00));
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000008);

      cHwPinConfig::set( cHwPinConfig::TIM5_CH1 );
      cHwPinConfig::set( cHwPinConfig::TIM5_CH2 );
      break;

  }
  
  ptr->CR1  = ((uint32_t)0x0001);  
  
  ptr->DIER = !((uint32_t)0x0001); 
  ptr->EGR  = ((uint32_t)0x01);   
  ptr->PSC  = 0;
  ptr->ARR  = 0xFFFF;

  ptr->SMCR &= ~(0x07<<0);
  ptr->SMCR |=  (0x03<<0); 
  
  
  ptr->CCER  &= ~( (1<<1)
                  |(1<<5));
  
  if( mode & REVERSE )        
  {    
    ptr->CCER  |=  (1<<1)    
                  |(0<<5);   
  }
  else 
  {
    ptr->CCER  |=  (0<<1)    
                  |(0<<5);   
  }

  ptr->CNT = 0;
  cntLast  = 0;
}


int cHwEncoder_N::get( void )
{
  
  WORD  cnt = ptr->CNT;
  int   ret = (short int)(cnt - cntLast);
  
  cntLast = cnt;
  
  return( ret );
}


#line 23 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.cpp"
#line 2 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.cpp"






   ETH_DMADESCTypeDef  DMARxDscrTab[5]; 

   ETH_DMADESCTypeDef  DMATxDscrTab[5]; 

   uint8_t Rx_Buff[5][1524];  

   uint8_t Tx_Buff[5][1524];  

#line 43 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.cpp"


 
volatile ETH_DMADESCTypeDef  *DMATxDescToSet;
volatile ETH_DMADESCTypeDef  *DMARxDescToGet;


 
ETH_DMA_Rx_Frame_infos RX_Frame_Descriptor;
volatile ETH_DMA_Rx_Frame_infos *DMA_RX_FRAME_infos;
volatile uint32_t Frame_Rx_index;




cHwEthernet_MCU::cHwEthernet_MCU( cHwPort::Pin &resetPin, const cNetAddr<6> &addrPhyIn )

: cHwEthernet( addrPhyIn )

{
  EthInitStatus = 0;
  EthLinkStatus = 0;

  ETH_AutoNegotiation      =  true; 

  
  ETH_Watchdog             = !((uint32_t)0x00800000); 
  ETH_Jabber               = !((uint32_t)0x00400000); 
  ETH_InterFrameGap        =  ((uint32_t)0x00000000);
  ETH_CarrierSense         = !((uint32_t)0x00010000); 
  ETH_Speed                =  ((uint32_t)0x00004000); 
  ETH_ReceiveOwn           = !((uint32_t)0x00002000); 
  ETH_LoopbackMode         = !((uint32_t)0x00001000); 
  ETH_Mode                 =  ((uint32_t)0x00000800); 



  ETH_ChecksumOffload      = !((uint32_t)0x00000400);

  ETH_RetryTransmission    =  ((uint32_t)0x00000200);  
  ETH_AutomaticPadCRCStrip = !((uint32_t)0x00000080);
  ETH_BackOffLimit         =  ((uint32_t)0x00000000);
  ETH_DeferralCheck        = !((uint32_t)0x00000010);

  
  ETH_ReceiveAll               = !((uint32_t)0x80000000);
  ETH_SourceAddrFilter         =  !((uint32_t)0x00000200)   
                                 |!((uint32_t)0x00000100); 
  ETH_PassControlFrames        =  ((uint32_t)0x00000040);
  ETH_BroadcastFramesReception = !((uint32_t)0x00000020); 
  ETH_DestinationAddrFilter    = !((uint32_t)0x00000008);
  ETH_PromiscuousMode          = !((uint32_t)0x00000001);
  ETH_MulticastFramesFilter    =  !((uint32_t)0x00000400)
                                 |!((uint32_t)0x00000010)
                                 |!((uint32_t)0x00000004);  
  ETH_UnicastFramesFilter      =  !((uint32_t)0x00000400)
                                 |!((uint32_t)0x00000002);   

  
  ETH_HashTableHigh            = 0x0;

  
  ETH_HashTableLow             = 0x0;

  
  ETH_PauseTime                = 0x0;

  ETH_ZeroQuantaPause          =  ((uint32_t)0x00000080); 
  ETH_PauseLowThreshold        =  ((uint32_t)0x00000000); 
  ETH_UnicastPauseFrameDetect  = !((uint32_t)0x00000008);
  ETH_ReceiveFlowControl       = !((uint32_t)0x00000004);
  ETH_TransmitFlowControl      = !((uint32_t)0x00000002);

  
  ETH_VLANTagComparison        = !((uint32_t)0x00010000); 
  ETH_VLANTagIdentifier        = 0x0;

  
  ETH_DropTCPIPChecksumErrorFrame = !((uint32_t)0x04000000); 
  ETH_ReceiveStoreForward         =  ((uint32_t)0x02000000);
  ETH_FlushReceivedFrame          = !((uint32_t)0x01000000); 
  ETH_TransmitStoreForward        =  ((uint32_t)0x00200000);
  ETH_TransmitThresholdControl    =  ((uint32_t)0x00000000);
  ETH_ForwardErrorFrames          = !((uint32_t)0x00000080);
  ETH_ForwardUndersizedGoodFrames = !((uint32_t)0x00000040);
  ETH_ReceiveThresholdControl     =  ((uint32_t)0x00000000);
  ETH_SecondFrameOperate          =  ((uint32_t)0x00000004);

  
  ETH_AddressAlignedBeats         =  ((uint32_t)0x02000000);
  ETH_FixedBurst                  =  ((uint32_t)0x00010000);
  ETH_RxDMABurstLength            =  ((uint32_t)0x00400000);
  ETH_TxDMABurstLength            =  ((uint32_t)0x00002000);
  ETH_DescriptorSkipLength        =  0x0;

  ETH_DMAArbitration              =   ((uint32_t)0x00000000) 
                                    |!((uint32_t)0x00000002);      

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00004000);  

   
  ((SYSCFG_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x3800))->PMC |= ((uint32_t)0x00800000); 

  cHwPinConfig::set( cHwPinConfig::ETH_MDIO,         cHwPinConfig::HIGH_SPEED
                                                |cHwPinConfig::PUSH_PULL
                                                |cHwPinConfig::NO_PUPD  );
  cHwPinConfig::set( cHwPinConfig::ETH_MII_RX_CLK,   cHwPinConfig::HIGH_SPEED
                                                |cHwPinConfig::PUSH_PULL
                                                |cHwPinConfig::NO_PUPD  );
  cHwPinConfig::set( cHwPinConfig::ETH_MII_RX_DV,    cHwPinConfig::HIGH_SPEED
                                                |cHwPinConfig::PUSH_PULL
                                                |cHwPinConfig::NO_PUPD  );

 cHwPinConfig::set( cHwPinConfig::ETH_MII_TX_EN,    cHwPinConfig::HIGH_SPEED
                                                |cHwPinConfig::PUSH_PULL
                                                |cHwPinConfig::NO_PUPD  );

  cHwPinConfig::set( cHwPinConfig::ETH_MII_TXD0,    cHwPinConfig::HIGH_SPEED
                                                  |cHwPinConfig::PUSH_PULL
                                                  |cHwPinConfig::NO_PUPD  );
  cHwPinConfig::set( cHwPinConfig::ETH_MII_TXD1,    cHwPinConfig::HIGH_SPEED
                                                  |cHwPinConfig::PUSH_PULL
                                                  |cHwPinConfig::NO_PUPD  );

 
 


  cHwPinConfig::set( cHwPinConfig::ETH_MDC       );
  cHwPinConfig::set( cHwPinConfig::ETH_MII_RXD0  );
  cHwPinConfig::set( cHwPinConfig::ETH_MII_RXD1  );

  resetPin.setMode(cHwPort::OutOD);
  resetPin.clr();
  cSystem::delayMilliSec(1000);
  resetPin.set();

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= (  ((uint32_t)0x02000000)
                   | ((uint32_t)0x04000000)
                   | ((uint32_t)0x08000000)
                   | ((uint32_t)0x10000000) ); 

   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1RSTR |= ((uint32_t)0x02000000);
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1RSTR &= ~((uint32_t)0x02000000);

   
   
   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMABMR |= ((uint32_t)0x00000001);

   
  while( ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMABMR & ((uint32_t)0x00000001) );


   
  DWORD id;
  BYTE PhyAddr;
  for(PhyAddr = 0; 32 > PhyAddr; PhyAddr++)
  {
    id =   (DWORD)ETH_ReadPHYRegister(PhyAddr,2)<<16
         | (DWORD)ETH_ReadPHYRegister(PhyAddr,3);

    
    
    if ((0x00221619 == id) || (0x0007C0F1 == id))
      break;
  }

  if(32 < PhyAddr)
  {
    
    while(1);
  }

   
  EthInitStatus = ETH_Init( PhyAddr);

   if (EthInitStatus == 0) {
    while(1);
  }

  low_level_init();
}


WORD cHwEthernet_MCU::getType( )
{
  cHwEthernet_Header *eth =(cHwEthernet_Header *)buf;

  if     ( plen >= sizeof( cNetIP_Msg ) && eth->type == TYPE_IP )
  {
    return( TYPE_IP );
  }
  else if( plen >= sizeof( cNetARP_Msg ) && eth->type == TYPE_ARP )
  {
    return( TYPE_ARP );
  }
  else
  {
    return( TYPE_UNDEF );
  }
  
}


void cHwEthernet_MCU::PacketSend(  uint8_t* packet, uint16_t len)
{
  low_level_output(packet, len);







}







bool cHwEthernet_MCU::PacketReceive()
{
  if( ETH_CheckFrameReceived() )
  {








    plen = low_level_input(buf,1500);

    return( true );
  }

















  return( false );
}


void cHwEthernet_MCU::create( const cNetAddr<6> destAddr,
                                   const WORD    type )
{
  cHwEthernet_Header *eth = (cHwEthernet_Header*)buf;

  eth->destinationAddr = destAddr;
  eth->sourceAddr      = addrPhy;
  eth->type            = type;
}






void cHwEthernet_MCU::low_level_init( )
    {



       
      
BYTE hwaddr[6];
       
      hwaddr[0] =  addrPhy.addr[0]; 
      hwaddr[1] =  addrPhy.addr[1];
      hwaddr[2] =  addrPhy.addr[2];
      hwaddr[3] =  addrPhy.addr[3];
      hwaddr[4] =  addrPhy.addr[4];
      hwaddr[5] =  addrPhy.addr[5];

       
      ETH_MACAddressConfig(((uint32_t)0x00000000), hwaddr);

       
      

       
       
      

       
      ETH_DMATxDescChainInit(DMATxDscrTab, &Tx_Buff[0][0], 5);
       
      ETH_DMARxDescChainInit(DMARxDscrTab, &Rx_Buff[0][0], 5);

#line 357 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Ethernet_MCU.cpp"

        

       
      ETH_Start();

    }





    int cHwEthernet_MCU::low_level_output(  BYTE *buff, DWORD length ) 
    {

      int framelength = 0;
      uint8_t *buffer =  (uint8_t *)(DMATxDescToSet->Buffer1Addr);





      memcpy(buffer,buff,length);
      framelength = length;
 






 
      
 

       
      ETH_Prepare_Transmit_Descriptors(framelength);

      return 0; 
    }





    
    

    DWORD cHwEthernet_MCU::low_level_input(BYTE *ibuffer, DWORD maxLen) 
    {
      
      uint16_t len;

      FrameTypeDef frame;
      uint8_t *buffer;
      uint32_t i=0;
      volatile ETH_DMADESCTypeDef *DMARxNextDesc;


     

       
      frame = ETH_Get_Received_Frame();

       
      len = frame.length;
      buffer = (uint8_t *)frame.buffer;

       
     

     

      memcpy( ibuffer, buffer,len);




 
       









       
       
      if (DMA_RX_FRAME_infos->Seg_Count > 1)
      {
        DMARxNextDesc = DMA_RX_FRAME_infos->FS_Rx_Desc;
      }
      else
      {
        DMARxNextDesc = frame.descriptor;
      }

       
      for (i=0; i<DMA_RX_FRAME_infos->Seg_Count; i++)
      {
        DMARxNextDesc->Status = ((uint32_t)0x80000000);
        DMARxNextDesc = (ETH_DMADESCTypeDef *)(DMARxNextDesc->Buffer2NextDescAddr);
      }

       
      DMA_RX_FRAME_infos->Seg_Count =0;

       
      if ((((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMASR & ((uint32_t)0x00000080)) != (uint32_t)RESET)
      {
         
        ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMASR = ((uint32_t)0x00000080);
         
        ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMARPDR = 0;
      }
     
      return( len );
    }

 
 
 

FrameTypeDef cHwEthernet_MCU::ETH_Get_Received_Frame(void)
{
  uint32_t framelength = 0;
  FrameTypeDef frame = {0,0,0};

   
  framelength = ((DMARxDescToGet->Status & ((uint32_t)0x3FFF0000)) >> 16) - 4;
  frame.length = framelength;

   
   
  if (DMA_RX_FRAME_infos->Seg_Count >1)
  {
    frame.buffer =(DMA_RX_FRAME_infos->FS_Rx_Desc)->Buffer1Addr;
  }
  else
  {
    frame.buffer = DMARxDescToGet->Buffer1Addr;
  }

  frame.descriptor = DMARxDescToGet;

   
   
   
  DMARxDescToGet = (ETH_DMADESCTypeDef*) (DMARxDescToGet->Buffer2NextDescAddr);

   
  return (frame);
}


uint32_t cHwEthernet_MCU::ETH_Prepare_Transmit_Descriptors(uint16_t FrameLength)
{
  uint32_t buf_count =0, size=0,i=0;
  volatile ETH_DMADESCTypeDef *DMATxNextDesc;

   
  if((DMATxDescToSet->Status & ((uint32_t)0x80000000)) != (uint32_t)RESET)
  {
     
    return ((uint32_t)0);
  }

  DMATxNextDesc = DMATxDescToSet;

  if (FrameLength > 1524)
  {
    buf_count = FrameLength/1524;
    if (FrameLength%1524) buf_count++;
  }
  else buf_count =1;

  if (buf_count ==1)
  {
     
    DMATxDescToSet->Status |=((uint32_t)0x10000000)|((uint32_t)0x20000000);
     
    DMATxDescToSet->ControlBufferSize = (FrameLength& ((uint32_t)0x00001FFF));
     
    DMATxDescToSet->Status |= ((uint32_t)0x80000000);
    DMATxDescToSet= (ETH_DMADESCTypeDef *)(DMATxDescToSet->Buffer2NextDescAddr);
  }
  else
  {
    for (i=0; i< buf_count; i++)
    {
      if (i==0)
      {
         
        DMATxDescToSet->Status |= ((uint32_t)0x10000000);
      }

       
      DMATxNextDesc->ControlBufferSize = (1524 & ((uint32_t)0x00001FFF));

      if (i== (buf_count-1))
      {
         
        DMATxNextDesc->Status |= ((uint32_t)0x20000000);
        size = FrameLength - (buf_count-1)*1524;
        DMATxNextDesc->ControlBufferSize = (size & ((uint32_t)0x00001FFF));
      }

       
      DMATxNextDesc->Status |= ((uint32_t)0x80000000);

      DMATxNextDesc = (ETH_DMADESCTypeDef *)(DMATxNextDesc->Buffer2NextDescAddr);
       
     }
    DMATxDescToSet = DMATxNextDesc ;
  }

   
  if ((((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMASR & ((uint32_t)0x00000004)) != (uint32_t)RESET)
  {
     
    ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMASR = ((uint32_t)0x00000004);
     
    ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMATPDR = 0;
  }

   
  return ((uint32_t)1);
}


void cHwEthernet_MCU::ETH_DMARxDescChainInit(ETH_DMADESCTypeDef *DMARxDescTab, uint8_t *RxBuff, uint32_t RxBuffCount)
{
  uint32_t i = 0;
  ETH_DMADESCTypeDef *DMARxDesc;

   
  DMARxDescToGet = DMARxDescTab;
   
  for(i=0; i < RxBuffCount; i++)
  {
     
    DMARxDesc = DMARxDescTab+i;
     
    DMARxDesc->Status = ((uint32_t)0x80000000);

     
    DMARxDesc->ControlBufferSize = ((uint32_t)0x00004000) | (uint32_t)1524;
     
    DMARxDesc->Buffer1Addr = (uint32_t)(&RxBuff[i*1524]);

     
    if(i < (RxBuffCount-1))
    {
       
      DMARxDesc->Buffer2NextDescAddr = (uint32_t)(DMARxDescTab+i+1);
    }
    else
    {
       
      DMARxDesc->Buffer2NextDescAddr = (uint32_t)(DMARxDescTab);
    }
  }

   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMARDLAR = (uint32_t) DMARxDescTab;


  DMA_RX_FRAME_infos = &RX_Frame_Descriptor;

}


uint32_t cHwEthernet_MCU::ETH_CheckFrameReceived(void)
{
   
  if(((DMARxDescToGet->Status & ((uint32_t)0x80000000)) == (uint32_t)RESET) &&
     ((DMARxDescToGet->Status & ((uint32_t)0x00000100)) != (uint32_t)RESET))
    {
      DMA_RX_FRAME_infos->LS_Rx_Desc = DMARxDescToGet;
      DMA_RX_FRAME_infos->Seg_Count++;
      return 1;
    }

     
    else if(((DMARxDescToGet->Status & ((uint32_t)0x80000000)) == (uint32_t)RESET) &&
     ((DMARxDescToGet->Status & ((uint32_t)0x00000200)) != (uint32_t)RESET)&&
     ((DMARxDescToGet->Status & ((uint32_t)0x00000100)) == (uint32_t)RESET))
    {
      DMA_RX_FRAME_infos->FS_Rx_Desc = DMARxDescToGet;
      DMA_RX_FRAME_infos->LS_Rx_Desc = 0;
      DMA_RX_FRAME_infos->Seg_Count = 1;
      DMARxDescToGet = (ETH_DMADESCTypeDef*) (DMARxDescToGet->Buffer2NextDescAddr);
    }

     
    else if(((DMARxDescToGet->Status & ((uint32_t)0x80000000)) == (uint32_t)RESET) &&
     ((DMARxDescToGet->Status & ((uint32_t)0x00000200)) == (uint32_t)RESET)&&
     ((DMARxDescToGet->Status & ((uint32_t)0x00000100)) == (uint32_t)RESET))
    {
      (DMA_RX_FRAME_infos->Seg_Count) ++;
      DMARxDescToGet = (ETH_DMADESCTypeDef*) (DMARxDescToGet->Buffer2NextDescAddr);
    }
    return 0;
}




void cHwEthernet_MCU::ETH_DMATxDescChainInit(ETH_DMADESCTypeDef *DMATxDescTab, uint8_t* TxBuff, uint32_t TxBuffCount)
{
  uint32_t i = 0;
  ETH_DMADESCTypeDef *DMATxDesc;

   
  DMATxDescToSet = DMATxDescTab;
   
  for(i=0; i < TxBuffCount; i++)
  {
     
    DMATxDesc = DMATxDescTab + i;
     
    DMATxDesc->Status = ((uint32_t)0x00100000);

     
    DMATxDesc->Buffer1Addr = (uint32_t)(&TxBuff[i*1524]);

     
    if(i < (TxBuffCount-1))
    {
       
      DMATxDesc->Buffer2NextDescAddr = (uint32_t)(DMATxDescTab+i+1);
    }
    else
    {
       
      DMATxDesc->Buffer2NextDescAddr = (uint32_t) DMATxDescTab;
    }
  }

   
  ((ETH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x8000))->DMATDLAR = (uint32_t) DMATxDescTab;
}

#line 24 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/I2Cmaster_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/I2Cmaster_MCU.cpp"












cHwI2Cmaster_N::cHwI2Cmaster_N( I2C_ID id, 
                                MODE   mode,
                                BYTE   maskIntr )

: cHwI2Cmaster( maskIntr )

{
  switch( id )
  {  
    default:
      
      break;
      
    case I2C_1: 
      ptrBase       = (I2C_TypeDef*)(((uint32_t)0x40000000) + 0x5400); 
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00200000);
      cHwPinConfig::set( cHwPinConfig::I2C1_SCL, cHwPinConfig::OPEN_DRAIN );
      cHwPinConfig::set( cHwPinConfig::I2C1_SDA, cHwPinConfig::OPEN_DRAIN );
      break;
            
    case I2C_2: 
      ptrBase       = (I2C_TypeDef*)(((uint32_t)0x40000000) + 0x5800); 
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00400000);
      cHwPinConfig::set( cHwPinConfig::I2C2_SCL, cHwPinConfig::OPEN_DRAIN );
      cHwPinConfig::set( cHwPinConfig::I2C2_SDA, cHwPinConfig::OPEN_DRAIN );
      break;
  }

  WORD ccr;
  
  switch( mode )
  {
    
    default:
    case CR_10kHz:   ccr = WORD( (float)((84000000)/2) /   20E3F ); break;
    case CR_100kHz:  ccr = WORD( (float)((84000000)/2) /  200E3F ); break;
    case CR_400kHz:  ccr = WORD( (float)((84000000)/2) /  800E3F ); break;
    case CR_1000kHz: ccr = WORD( (float)((84000000)/2) / 2000E3F ); break;
  } 

  ptrBase->CR2 &= ~0x3F; 
  ptrBase->CR2 |= RANGE( ((84000000)/2)/1000000, 2, 42 ); 
  
  ptrBase->CCR =  ((uint32_t)0x00008000)     
                |!((uint32_t)0x00004000)   
                | ccr; 
  
  ptrBase->TRISE = (WORD)(0.1e-6 * ((84000000)/2)) + 1; 
  
  ptrBase->CR1 |= ((uint32_t)0x00000001); 
}


inline void cHwI2Cmaster_N::waitForAckn( MTYPE state )
{
  WORD i= 0xFFFF;

  if( isHardwareOK )
  {
    while( (--i) && !(ptrBase->SR1 & state)  );    
  }

  if( i == 0 ) 
  {
    isHardwareOK = false; 
    stop();
  }
}


inline void cHwI2Cmaster_N::start( void )
{
  if( isHardwareOK )
  {
    ptrBase->CR1 &= ~(((uint32_t)0x00000200) | ((uint32_t)0x00000100));
    ptrBase->CR1 |=  (               ((uint32_t)0x00000100));
    waitForAckn( ((uint32_t)0x00000001) );
  }
}


inline void cHwI2Cmaster_N::stop( void )
{
  ptrBase->CR1 |=  (((uint32_t)0x00000200)                );
}


inline void cHwI2Cmaster_N::sendAddr( BYTE addr )
{
  if( isHardwareOK )
  {
    BYTE tmp = ptrBase->SR1;
    ptrBase->DR = addr;   
    if( addr & 0x01 ) 
      ptrBase->CR1 |= (((uint32_t)0x00000400) );
    waitForAckn( ((uint32_t)0x00000002) | ((uint32_t)0x00000080) );

    tmp = ptrBase->SR2;
  }
}


inline void cHwI2Cmaster_N::writeByte( BYTE byte )
{
  if( isHardwareOK )
  {
    ptrBase->DR = byte; 
 
    waitForAckn( ((uint32_t)0x00000080) );
 
    BYTE tmp = ptrBase->SR2;
  }
}


inline BYTE cHwI2Cmaster_N::readByteAck( void )
{
  if( isHardwareOK )
  {
    ptrBase->CR1 |= (((uint32_t)0x00000400) );

    waitForAckn( ((uint32_t)0x00000040) ); 
    return( ptrBase->DR );
  }
  return( 0 );
}


inline BYTE cHwI2Cmaster_N::readByteNack( void )
{
  if( isHardwareOK )
  {
    ptrBase->CR1 &= ~(((uint32_t)0x00000400) );

    waitForAckn( ((uint32_t)0x00000040) ); 
    return( ptrBase->DR );
  }
  return( 0 );
}


#line 25 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_BKPRAM.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_BKPRAM.cpp"







cHwMemory_BKPRAM::cHwMemory_BKPRAM( void )

: cHwMemory( 80,    
             0xFF ) 

{
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x10000000);
  ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR |= ((uint32_t)0x00000100);
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((uint32_t)0x00040000);
  ptr = (DWORD*)(&((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->BKP0R);
}


inline void cHwMemory_BKPRAM::writeByte( DWORD addr, BYTE data )
{
  
  
  DWORD *tmp  = ptr + (addr>>2);
  BYTE   offs = (addr&0x03)<<3;

  *tmp &= ~(0xFF<<offs); 
  *tmp |=  (data<<offs);
}


inline BYTE cHwMemory_BKPRAM::readByte( DWORD addr )
{
  
  
  DWORD *tmp  = ptr + (addr>>2);
  BYTE   offs = (addr&0x03)<<3;

  return( ((*tmp)>>offs) & 0xFF );
}


#line 26 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_Flash.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_Flash.cpp"







cHwMemory_Flash::cHwMemory_Flash( Sector sector )

: cHwMemory( (sector&0x0F)*0x4000, 
             0xFF ) 

{
  ptr            = (BYTE*)( (sector>>8)*0x4000 + 0x08000000 );
  sectorID       = (sector>>4)&0x0F;
  dataDoubleWord = 0;
  isFlashFlag    = true;
}


void cHwMemory_Flash::clear( DWORD offset )
{
  while( ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->SR & ((uint32_t)0x00010000) );
  
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->KEYR = 0x45670123;
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->KEYR = 0xCDEF89AB;
  
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->CR &= ~(((uint32_t)0x00010000) | ((uint32_t)0x00000002) | (0xf<<3)); 
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->CR |=   ((uint32_t)0x00000002) | (sectorID<<3); 
  
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->CR |= ((uint32_t)0x00010000);
  
  while( ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->SR & ((uint32_t)0x00010000) );
  
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->CR &= ~(((uint32_t)0x00010000) | ((uint32_t)0x00000002) | (0xf<<3)); 
  
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->CR |= ((uint32_t)0x80000000);
  
  while( ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->SR & ((uint32_t)0x00010000) );
}


void cHwMemory_Flash::writeByte( DWORD addr, BYTE data )
{
  while( ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->SR & ((uint32_t)0x00010000) );
  
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->KEYR = 0x45670123;
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->KEYR = 0xCDEF89AB;
  
  while( ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->SR & ((uint32_t)0x00010000) );
  
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->CR |= ((uint32_t)0x00000001);
  
  ptr[addr] = data;
  
  while( ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->SR & ((uint32_t)0x00010000) );

  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->CR &= ~((uint32_t)0x00000001);
  
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->CR |= ((uint32_t)0x80000000);

  while( ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3C00))->SR & ((uint32_t)0x00010000) );
}


BYTE cHwMemory_Flash::readByte( DWORD addr )
{
  return( ptr[addr] );
}


#line 27 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_RAM.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Memory_RAM.cpp"







cHwMemory_RAM::cHwMemory_RAM( void )

: cHwMemory( 0x1000,    
             0xFF ) 

{
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x10000000);
  ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR |= ((uint32_t)0x00000100);
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((uint32_t)0x00040000);

  ptr = (BYTE*)(0x40024000);
  
((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CSR |= ((uint32_t)0x00000200);
while( !(((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CSR&((uint32_t)0x00000008)) );


}
























void cHwMemory_RAM::writeByte( DWORD addr, BYTE data )
{
  ptr[addr] = data;


















}


BYTE cHwMemory_RAM::readByte( DWORD addr )
{
  return( ptr[addr] );
}


#line 28 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Port_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Port_MCU.cpp"







cHwPort_N::cHwPort_N( PortId portId ) 

: cHwPort()

{
  switch( portId )
  {
    default:
      
      break;
    case PA: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x0000)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 0) ); break;
    case PB: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x0400)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 1) ); break;
    case PC: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x0800)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 2) ); break;
    case PD: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 3) ); break;
    case PE: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x1000)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 4) ); break;
    case PF: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x1400)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 5) ); break;
    case PG: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x1800)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 6) ); break;
    case PH: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x1C00)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 7) ); break;
    case PI: ptr = (GPIO_TypeDef *)(((((uint32_t)0x40000000) + 0x00020000) + 0x2000)); ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((1UL << 8) ); break;
  }
}


void cHwPort_N::setMode( MTYPE mask, Mode mode )
{
  for( BYTE i = 0; i < 16; i++, mask >>= 1 )
  {
    if( mask & 0x01 )
    {
      setPinMode( i, mode );
    }
  }
}


void cHwPort_N::setPinMode( BYTE pinId, Mode mode )
{
  BYTE  pinId2 = pinId << 1;

  MTYPE bitmask  = ~((MTYPE)0x01 << pinId  );
  MTYPE bitmask2 = ~((MTYPE)0x03 << pinId2 );

  MTYPE moder  = 0;
  MTYPE pupdr  = 0;
  MTYPE otyper = 0;
  
  if( mode & cHwPort::Out ) moder   = (MTYPE)0x01<< pinId2;
  if( mode & cHwPort::PU  ) pupdr  |= (MTYPE)0x01<< pinId2;
  if( mode & cHwPort::PD  ) pupdr  |= (MTYPE)0x02<< pinId2;
  if( mode & cHwPort::OD  ) otyper  = (MTYPE)0x01<< pinId;

  cSystem::disableInterrupt();
  ptr->MODER     = ( ptr->MODER     & bitmask2 ) | moder;
  ptr->PUPDR     = ( ptr->PUPDR     & bitmask2 ) | pupdr;
  ptr->OTYPER    = ( ptr->OTYPER    & bitmask  ) | otyper;
  cSystem::enableInterrupt();
}


#line 29 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/RTC_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/RTC_MCU.cpp"







cHwRTC_0::cHwRTC_0( void )
{
  ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR |= ((uint32_t)0x00000100);
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->BDCR &= ~(0x03<<8); 
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->BDCR |=  (   1<<15) 
               |(0x01<< 8)  
               |(1<<0); 

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CFGR &= ~(0x1F<<16);
  

  
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->WPR = 0xCA;
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->WPR = 0x53;

  
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->ISR |= ((uint32_t)0x00000080);

  while( !(((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->ISR & ((uint32_t)0x00000040)) );

  
  

  
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->ISR &= ~((uint32_t)0x00000080);

 






















 
}


void cHwRTC_0::set( const cHwRTC::Properties &clock )
{
  
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->WPR = 0xCA;
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->WPR = 0x53;

  
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->ISR |= ((uint32_t)0x00000080);

  while( !(((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->ISR & ((uint32_t)0x00000040)) );

  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR =  ((DWORD)((clock.second%10)&0xF) << 0)
            |((DWORD)((clock.second/10)&0x7) << 4)
            |((DWORD)((clock.minute%10)&0xF) << 8)
            |((DWORD)((clock.minute/10)&0x7) <<12)
            |((DWORD)((clock.hour  %10)&0xF) <<16)
            |((DWORD)((clock.hour  /10)&0x3) <<20);

  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DR =  ((DWORD)((clock.day  %10)&0xF) << 0)
            |((DWORD)((clock.day  /10)&0x3) << 4)
            |((DWORD)((clock.month%10)&0xF) << 8)
            |((DWORD)((clock.month/10)&0x1) <<12)
            |((DWORD)((clock.year %10)&0xF) <<16)
            |((DWORD)((clock.year /10)&0xF) <<20);

  
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->ISR &= ~((uint32_t)0x00000080);
}


BYTE cHwRTC_0::get( cHwRTC::Properties &clock )
{
   BYTE sec;

  clock.second = (BYTE)(((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR >> 0)&0xF) + 10*((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR >> 4)&0x7));
  clock.minute = (BYTE)(((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR >> 8)&0xF) + 10*((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR >>12)&0x7));
  clock.hour   = (BYTE)(((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR >>16)&0xF) + 10*((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR >>20)&0x3));

  clock.day    = (BYTE)(((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DR >> 0)&0xF) + 10*((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DR >> 4)&0x3));
  clock.month  = (BYTE)(((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DR >> 8)&0xF) + 10*((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DR >>12)&0x1));
  clock.year   = (BYTE)(((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DR >>16)&0xF) + 10*((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DR >>20)&0xF));

  
  sec          = (BYTE)(((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR >> 0)&0xF) + 10*((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->TR >> 4)&0x7));

  return( (clock.second <= sec) ? true : false );
}


#line 30 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/SPImaster_MCU.cpp"









 


#line 14 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/SPImaster_MCU.cpp"












cHwSPImaster_N::cHwSPImaster_N( SPI_ID       id, 
                                MODE         mode,
                                ClockPolPha  clockPolPhaIn )

: cHwSPImaster()

{
  switch( id )
  {
    default:
      
      break;
      
    case SPI_1:
      ptr           = ((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x3000));
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00001000);
      cHwPinConfig::set( cHwPinConfig::SPI1_SCK  );
      cHwPinConfig::set( cHwPinConfig::SPI1_MISO );
      cHwPinConfig::set( cHwPinConfig::SPI1_MOSI );

      break;

    case SPI_2:
      ptr           = ((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800));
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00004000);
      cHwPinConfig::set( cHwPinConfig::SPI2_SCK  );
      cHwPinConfig::set( cHwPinConfig::SPI2_MISO );
      cHwPinConfig::set( cHwPinConfig::SPI2_MOSI );

      break;

    case SPI_3:
      ptr           = ((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3C00));
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00008000);
      cHwPinConfig::set( cHwPinConfig::SPI3_SCK  );
      cHwPinConfig::set( cHwPinConfig::SPI3_MISO );
      cHwPinConfig::set( cHwPinConfig::SPI3_MOSI );

      break;
  }

  WORD br;
  
  switch( mode )
  {
    default:
    
    
    case CR_250kHz:  br = 6;   break;
    case CR_500kHz:  br = 5;   break;
    case CR_1000kHz: br = 4;   break;
    case CR_2000kHz: br = 3;   break;
    case CR_4000kHz: br = 2;   break;
    case CR_8000kHz: br = 1;   break;
  } 

  cr1  =   !((uint32_t)0x00000800)       
         |  ((uint32_t)0x00000200)       
         |  ((uint32_t)0x00000100)       
         |  ((uint32_t)0x00000080)  
         |  ((uint32_t)0x00000040)       
         |  (br<<3)           
         |  ((uint32_t)0x00000004)      
         |  ((clockPolPhaIn&0x01)?((uint32_t)0x00000002):0)
         |  ((clockPolPhaIn&0x10)?((uint32_t)0x00000001):0);

  ptr->CR1 = cr1 & (~((uint32_t)0x00000040));

  ptr->CR1 |= ((uint32_t)0x00000040);

  
  transceiveByte( 0x00 );
}


BYTE cHwSPImaster_N::transceiveByte( BYTE data )
{
  BYTE x=0;

  
  while( !(ptr->SR & ((uint32_t)0x00000002)) );

  
  ptr->DR = data;
  
  
  while( !(ptr->SR & ((uint32_t)0x00000002)) );

  
  while( (ptr->SR & ((uint32_t)0x00000080)) );

  
  while( (ptr->SR & ((uint32_t)0x00000001)) )
  {
     x = ptr->DR;
  }

  return( x );
}


BYTE cHwSPImaster_N::transceiveByteExt( BYTE bit, BYTE data )
{
  return( 0 );
   
}


#line 31 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Timer_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/Timer_MCU.cpp"












cHwTimer_N *cHwTimer_N::timerPtr_1 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_2 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_3 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_4 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_5 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_7 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_8 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_9 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_10 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_11 = 0;
cHwTimer_N *cHwTimer_N::timerPtr_14 = 0;


cHwTimer_N::cHwTimer_N( TimerId timerIdIn,
                        DWORD   cycleTimeIn )

: cHwTimer()

{
  timerId = timerIdIn;

  switch( timerId )
  {
     default:
      
      break;

   case TIM_1:
      ptr           = (TIM_TypeDef*)((((uint32_t)0x40000000) + 0x00010000) + 0x0000);
      timerPtr_1    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00000001);
      NVIC_EnableIRQ( TIM1_UP_TIM10_IRQn );
      break;

    case TIM_2:
      ptr           = (TIM_TypeDef*)(((uint32_t)0x40000000) + 0x0000);
      timerPtr_2    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000001);
      NVIC_EnableIRQ( TIM2_IRQn );
      break;

    case TIM_3:
      ptr           = (TIM_TypeDef*)(((uint32_t)0x40000000) + 0x0400);
      timerPtr_3    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000002);
      NVIC_EnableIRQ( TIM3_IRQn );
      break;

    case TIM_4:
      ptr           = (TIM_TypeDef*)(((uint32_t)0x40000000) + 0x0800);
      timerPtr_4    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000004);
      NVIC_EnableIRQ( TIM4_IRQn );
      break;

    case TIM_5:
      ptr           = (TIM_TypeDef*)(((uint32_t)0x40000000) + 0x0C00);
      timerPtr_5    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000008);
      NVIC_EnableIRQ( TIM5_IRQn );
      break;

    case TIM_7:
      ptr           = (TIM_TypeDef*)(((uint32_t)0x40000000) + 0x1400);
      timerPtr_7    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000020);
      NVIC_EnableIRQ( TIM7_IRQn );
      break;

    case TIM_8:
      ptr           = (TIM_TypeDef*)((((uint32_t)0x40000000) + 0x00010000) + 0x0400);
      timerPtr_8    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00000002);
      NVIC_EnableIRQ( TIM8_CC_IRQn );
      break;

    case TIM_9:
      ptr           = (TIM_TypeDef*)((((uint32_t)0x40000000) + 0x00010000) + 0x4000);
      timerPtr_9    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00010000);
      
      
      break;

    case TIM_10:
      ptr           = (TIM_TypeDef*)((((uint32_t)0x40000000) + 0x00010000) + 0x4400);
      timerPtr_10    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00020000);
      
      
      break;

    case TIM_11:
      ptr           = (TIM_TypeDef*)((((uint32_t)0x40000000) + 0x00010000) + 0x4800);
      timerPtr_11    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00040000);
      
      
      break;

    case TIM_14:
      ptr           = (TIM_TypeDef*)(((uint32_t)0x40000000) + 0x2000);
      timerPtr_14    = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00000100);
      
      
      break;
  }

  
  float rawTics = (float)((84000000)/2) * cycleTimeIn * 1E-6f;
  DWORD ps      = 1;
  while( rawTics > 0xFFFF ) 
  {
    ps      *= 10;
    rawTics /= 10;
  }

  tics      = (DWORD)rawTics;
  cycleTime = (DWORD)(1E6 * tics * ps / (float)((84000000)/2));

  ptr->CR1  = ((uint32_t)0x0001);  
  ptr->DIER = ((uint32_t)0x0001); 
  ptr->EGR  = ((uint32_t)0x01);   
  ptr->PSC  = ps - 1;
  ptr->ARR  = tics;
}


void cHwTimer_N::enablePWM( BYTE channel, Mode polarity )
{
  switch( timerId )
  {
    case TIM_1:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM1_CH1     ); break;
        case 1: cHwPinConfig::set( cHwPinConfig::TIM1_CH2     ); break;
        case 2: cHwPinConfig::set( cHwPinConfig::TIM1_CH3     ); break;
        case 3: cHwPinConfig::set( cHwPinConfig::TIM1_CH4     ); break;
      }
      ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->BDTR |= (1<<15); 
      break;

    case TIM_2:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM2_CH1     ); break;
        case 1: cHwPinConfig::set( cHwPinConfig::TIM2_CH2     ); break;
        case 2: cHwPinConfig::set( cHwPinConfig::TIM2_CH3     ); break;
        case 3: cHwPinConfig::set( cHwPinConfig::TIM2_CH4     ); break;
      }
      break;

    case TIM_3:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM3_CH1     ); break;
        case 1: cHwPinConfig::set( cHwPinConfig::TIM3_CH2     ); break;
        case 2: cHwPinConfig::set( cHwPinConfig::TIM3_CH3     ); break;
        case 3: cHwPinConfig::set( cHwPinConfig::TIM3_CH4     ); break;
      }
      break;

    case TIM_4:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM4_CH1     ); break;
        case 1: cHwPinConfig::set( cHwPinConfig::TIM4_CH2     ); break;
        case 2: cHwPinConfig::set( cHwPinConfig::TIM4_CH3     ); break;
        case 3: cHwPinConfig::set( cHwPinConfig::TIM4_CH4     ); break;
      }
      break;

    case TIM_5:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM5_CH1     ); break;
        case 1: cHwPinConfig::set( cHwPinConfig::TIM5_CH2     ); break;
        case 2: cHwPinConfig::set( cHwPinConfig::TIM5_CH3     ); break;
        case 3: cHwPinConfig::set( cHwPinConfig::TIM5_CH4     ); break;
      }
      break;

    case TIM_7:
      switch( channel )
      {




      }
      break;

    case TIM_8:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM8_CH1     ); break;
        case 1: cHwPinConfig::set( cHwPinConfig::TIM8_CH2     ); break;
        case 2: cHwPinConfig::set( cHwPinConfig::TIM8_CH3     ); break;
        case 3: cHwPinConfig::set( cHwPinConfig::TIM8_CH4     ); break;
      }
      ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->BDTR |= (1<<15); 
      break;

    case TIM_9:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM9_CH1     ); break;
        case 1: cHwPinConfig::set( cHwPinConfig::TIM9_CH2     ); break;
      }
      break;

    case TIM_10:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM10_CH1     ); break;
      }
      ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x4400))->BDTR |= (1<<15); 
      break;

    case TIM_11:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM11_CH1     ); break;
      }
      ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x4800))->BDTR |= (1<<15); 
      break;

    case TIM_14:
      switch( channel )
      {
        case 0: cHwPinConfig::set( cHwPinConfig::TIM14_CH1     ); break;
      }
      break;

    default:
      
      break;
  }

  WORD ccmr =  (7<<4)  
              |(1<<3); 

  WORD ccer = 0;
  if( polarity )
  {
   ccer =  (1<<2)  
              |(1<<3); 
  }
  else
  {
   ccer =  (1<<0)  
              |(1<<1); 
  }
  switch( channel )
  {
    case 0:
      ptr->CCMR1 |=  ccmr;
      ptr->CCER  |=  ccer;
      break;

    case 1:
      ptr->CCMR1 |=  ccmr<<8;
      ptr->CCER  |=  ccer<<4;
      break;

    case 2:
      ptr->CCMR2 |=  ccmr;
      ptr->CCER  |=  ccer<<8;
      break;

    case 3:
      ptr->CCMR2 |=  ccmr<<8;
      ptr->CCER  |=  ccer<<12;
      break;
  }
}


void cHwTimer_N::setPWM( WORD value, BYTE ch )
{
  value = (WORD)((DWORD)value*tics >> 16);

  switch( ch )
  {
    case 0: ptr->CCR1  = value; break;
    case 1: ptr->CCR2  = value; break;
    case 2: ptr->CCR3  = value; break;
    case 3: ptr->CCR4  = value; break;
  }
}


void cHwTimer_N::isr_N(void)
{
  ptr->SR = !((uint32_t)0x0040);
  ptr->SR = !((uint32_t)0x0001);
  isrHandler();
}


extern "C" {
  void TIM1_UP_TIM10_IRQHandler(void)
		
  {
    if( ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR & ((uint32_t)0x0001) )
		{
			cHwTimer_N::timerPtr_1->isr_N();
			((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR = 0;
		}
		else if( ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x4400))->SR )
		{
			((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x4400))->SR=0;
		}
  }
}


extern "C" {
  void TIM2_IRQHandler(void)
  {
    cHwTimer_N::timerPtr_2->isr_N();
  }
}


extern "C" {
  void TIM3_IRQHandler(void)
  {
    cHwTimer_N::timerPtr_3->isr_N();
  }
}


extern "C" {
  void TIM4_IRQHandler(void)
  {
    cHwTimer_N::timerPtr_4->isr_N();
  }
}


extern "C" {
  void TIM5_IRQHandler(void)
  {
    cHwTimer_N::timerPtr_5->isr_N();
  }
}


extern "C" {
  void TIM7_IRQHandler(void)
  {
    cHwTimer_N::timerPtr_7->isr_N();
  }
}


extern "C" {
  void TIM8_CC_IRQHandler(void)
  {
    cHwTimer_N::timerPtr_8->isr_N();
  }
}




#line 32 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/UART_MCU.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/UART_MCU.cpp"












cHwUART_N *cHwUART_N::uartPtr_1 = 0;
cHwUART_N *cHwUART_N::uartPtr_2 = 0;
cHwUART_N *cHwUART_N::uartPtr_3 = 0;
cHwUART_N *cHwUART_N::uartPtr_4 = 0;
cHwUART_N *cHwUART_N::uartPtr_6 = 0;


cHwUART_N::cHwUART_N( USART_Id id,
                      DWORD    mode,
                      BYTE     sizeRxBuf,
                      BYTE     sizeTxBuf )

: cHwUART( sizeRxBuf, sizeTxBuf )

{
  switch( id )
  {
    default:
      
      break;
    
    case USART_1:
      ptr           = (USART_TypeDef*)((((uint32_t)0x40000000) + 0x00010000) + 0x1000);
      uartPtr_1     = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00000010);  
      cHwPinConfig::set( cHwPinConfig::USART1_RX );
      cHwPinConfig::set( cHwPinConfig::USART1_TX );
      if( mode & RTS )
      {
        cHwPinConfig::set( cHwPinConfig::USART1_RTS );
      }
      if( mode & CTS )
      {
        cHwPinConfig::set( cHwPinConfig::USART1_CTS );
      }
      NVIC_EnableIRQ( USART1_IRQn );
      break;

  case USART_2:
      ptr           = (USART_TypeDef*)(((uint32_t)0x40000000) + 0x4400);
      uartPtr_2     = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00020000);  
      cHwPinConfig::set( cHwPinConfig::USART2_RX );
      cHwPinConfig::set( cHwPinConfig::USART2_TX );
      if( mode & RTS )
      {
        cHwPinConfig::set( cHwPinConfig::USART2_RTS );
      }
      if( mode & CTS )
      {
        cHwPinConfig::set( cHwPinConfig::USART2_CTS );
      }
      NVIC_EnableIRQ( USART2_IRQn );
      break;

    case USART_3:
      ptr           = (USART_TypeDef*)(((uint32_t)0x40000000) + 0x4800);
      uartPtr_3     = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00040000);  
      cHwPinConfig::set( cHwPinConfig::USART3_RX );
      cHwPinConfig::set( cHwPinConfig::USART3_TX );
      if( mode & RTS )
      {
        cHwPinConfig::set( cHwPinConfig::USART3_RTS );
      }
      if( mode & CTS )
      {
        cHwPinConfig::set( cHwPinConfig::USART3_CTS );
      }
      NVIC_EnableIRQ( USART3_IRQn );
      break;

    case UART_4:
      ptr           = (USART_TypeDef*)(((uint32_t)0x40000000) + 0x4C00);
      uartPtr_4     = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |= ((uint32_t)0x00080000);  
      cHwPinConfig::set( cHwPinConfig::UART4_RX );
      cHwPinConfig::set( cHwPinConfig::UART4_TX );
      if( mode & RTS )
      {
       
      }
      if( mode & CTS )
      {
        
      }
      NVIC_EnableIRQ( UART4_IRQn );
      break;

    case USART_6:
      ptr           = (USART_TypeDef*)((((uint32_t)0x40000000) + 0x00010000) + 0x1400);
      uartPtr_6     = this;
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00000020);  
      cHwPinConfig::set( cHwPinConfig::USART6_RX );
      cHwPinConfig::set( cHwPinConfig::USART6_TX );
      if( mode & RTS )
      {
        cHwPinConfig::set( cHwPinConfig::USART6_RTS );
      }
      if( mode & CTS )
      {
        cHwPinConfig::set( cHwPinConfig::USART6_CTS );
      }

      NVIC_EnableIRQ( USART6_IRQn );
      break;
  }

  DWORD baudRate;

  switch( mode & 0xFFFF )
  {
    default:
    case BR_2400:   baudRate =   2400; break;
    case BR_4800:   baudRate =   4800; break;
    case BR_9600:   baudRate =   9600; break;
    case BR_19200:  baudRate =  19200; break;
    case BR_38400:  baudRate =  38400; break;
    case BR_57600:  baudRate =  57600; break;
    case BR_115200: baudRate = 115200; break;
    case BR_230400: baudRate = 230400; break;
    case BR_460800: baudRate = 460800; break;
  }

  ptr->CR2 |=  ((MTYPE)0<<12); 

  ptr->CR1 |=  (        ((mode&(EVEN|ODD))?((uint32_t)0x1000)  :0)  
                     |  ((mode&(EVEN|ODD))?((uint32_t)0x0400):0)  
                     |  ((mode&      ODD )?((uint32_t)0x0200) :0)  
                     |  ((uint32_t)0x0004)   
                     |  ((uint32_t)0x0008) );

  ptr->CR3 |=  (  ((mode&RTS)?((uint32_t)0x0100):0)
                | ((mode&CTS)?((uint32_t)0x0200):0) ); 

  
  
  
  
  
  
  
  
  
  
  ptr->BRR  = (WORD)(((84000000)/4) / baudRate);

  ptr->CR1 |= (  ((uint32_t)0x2000)       
               | ((uint32_t)0x0040)     
               | ((uint32_t)0x0020) );
}


inline BYTE cHwUART_N::getByte( void )
{
  return( ptr->DR );
}


inline void cHwUART_N::setByte( BYTE c )
{
  ptr->DR = c;
}


void cHwUART_N::isr( void )
{
  if( ptr->SR & ((uint32_t)0x0040) ) 
  {
    ptr->SR = ~(((uint32_t)0x0040));
    isrTx();
  }
  if( ptr->SR & ((uint32_t)0x0020) ) 
  {
    isrRx();
  }
}


extern "C"
{
  void USART1_IRQHandler(void)
  {
    cHwUART_N::uartPtr_1->isr();
  }
}


extern "C"
{
  void USART2_IRQHandler(void)
  {
    cHwUART_N::uartPtr_2->isr();
  }
}


extern "C"
{
  void USART3_IRQHandler(void)
  {
    cHwUART_N::uartPtr_3->isr();
  }
}


extern "C"
{
  void UART4_IRQHandler(void)
  {
    cHwUART_N::uartPtr_4->isr();
  }
}


extern "C"
{
  void USART6_IRQHandler(void)
  {
    cHwUART_N::uartPtr_6->isr();
  }
}

#line 33 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/USB_MCU.cpp"










 


#line 15 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/Src/USB_MCU.cpp"











cHwUSB_0::EndpointIN::EndpointIN( void )
{
}
  

void cHwUSB_0::EndpointIN::init( BYTE numIn )
{
  num  = numIn;
  inep = ((USB_OTG_INEndpointTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x900)  + (num)*((uint32_t )0x20)));
  fifo = (volatile DWORD                 *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x1000)         + (num)*((uint32_t )0x1000)   );
}


void cHwUSB_0::EndpointIN::config( WORD epMPS, BYTE epType )
{
  txBuf.maxpacket = epMPS;
  
  if( num == 0 )
  {
    epMPS = 0; 
  }
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINTMSK |= ((uint32_t)0x0000FFFF) & ((1 << (num)));

  if( !(inep->DIEPCTL & ((uint32_t)0x00008000)) )
  {
    inep->DIEPCTL |= (  (epMPS & ((uint32_t)0x000007FF) ) 
                      | (epType << 18 ) 
                      | (num    << 22 ) 
                      | ((uint32_t)0x10000000) 
                      | ((uint32_t)0x00008000) ); 
  } 
}


void cHwUSB_0::EndpointIN::flush( void )
{
  DWORD count = 200000;
  
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRSTCTL = ((uint32_t)0x00000020) | (num << 5);
  
  while(    (((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRSTCTL & ((uint32_t)0x00000020)) 
         && (count--) );
}
 

void cHwUSB_0::EndpointIN::reset()
{
  inep->DIEPINT = 0xFF;
}


void cHwUSB_0::EndpointIN::start()
{
  if( inep->DIEPCTL & ((uint32_t)0x80000000) )
  {
    inep->DIEPCTL = (  ((uint32_t)0x40000000) 
                     | ((uint32_t)0x08000000)  );
  }
  else
  {
    inep->DIEPCTL = 0;
  }
  inep->DIEPTSIZ = 0;
  inep->DIEPINT  = 0xFF;        
}


void cHwUSB_0::EndpointIN::setStall( void )
{
  if( !(inep->DIEPCTL & ((uint32_t)0x80000000)) )
  {
    inep->DIEPCTL &= ~(((uint32_t)0x40000000)); 
  } 
  inep->DIEPCTL |= ((uint32_t)0x00200000);
}


void cHwUSB_0::EndpointIN::clrStall( void ) 
{
  inep->DIEPCTL &= ~((uint32_t)0x00200000);
  inep->DIEPCTL |=  ((uint32_t)0x10000000);
}


WORD cHwUSB_0::EndpointIN::write( BYTE *dataPtr, WORD len )
{
  len = MIN( len, (WORD)128 );
  
  for(WORD i = 0; i < len; i++ )
  {
    txBuf.data[i] = dataPtr[i];
  }
  txBuf.size = len;
  txBuf.flag = true;
  
  return( len );
}


void cHwUSB_0::EndpointIN::writeToFifo( void )
{
  WORD len = MIN( txBuf.size, txBuf.maxpacket );
  WORD cnt = (len + 3) / 4;
 
  if( (inep->DTXFSTS & ((uint32_t)0x0000FFFF)) >= cnt )
  {
    __packed DWORD *src = (__packed DWORD *)&txBuf.data[0];
    
    txBuf.size = 0;
    txBuf.flag = false;
    
    for( WORD i = 0; i < cnt; i++, src ++)
    {      
      *fifo = *src;
    }
  }
  
  if( len <= 0 )
  {
    ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DIEPEMPMSK &= ~(0x1 << num);
  }    
}


void cHwUSB_0::EndpointIN::transmit( bool flag )
{
  WORD mps  = txBuf.maxpacket;
  WORD len  = MIN( txBuf.size, txBuf.maxpacket );

  if( !txBuf.flag )
  {
    transmitZLP();
    return;
  }

  if( len == 0 ) 
  {
    if( flag )
    {
      transmitZLP();
    }
  }
  else
  {
    BYTE pktCnt =  ((len + mps -1)/ mps);
    
    inep->DIEPTSIZ &= ~(   ((uint32_t)0x1FF80000)
                         | ((uint32_t)0x0007FFFF) );
    
    inep->DIEPTSIZ |=  (  (((uint32_t)0x1FF80000) & (pktCnt << 19))
                         |(((uint32_t)0x0007FFFF) & len) ); 
    
    ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DIEPEMPMSK |= 1 << num; 

    inep->DIEPCTL  |=  (   ((uint32_t)0x04000000) 
                         | ((uint32_t)0x80000000) ); 
  }
}


void cHwUSB_0::EndpointIN::transmitZLP( void )
{
    inep->DIEPTSIZ &= ~(   ((uint32_t)0x1FF80000)
                         | ((uint32_t)0x0007FFFF) );
    
    inep->DIEPTSIZ |=  (   ((uint32_t)0x1FF80000) & (1 << 19) ); 

    inep->DIEPCTL  |=  (   ((uint32_t)0x04000000) 
                         | ((uint32_t)0x80000000) ); 
}


DWORD cHwUSB_0::EndpointIN::getInterrupt( void )
{
  DWORD msk = ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DIEPMSK | (((((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DIEPEMPMSK >> num) & 0x1) << 7);

  return( inep->DIEPINT & msk );
}


void cHwUSB_0::EndpointIN::clrInterrupt( DWORD interruptID )
{
  inep->DIEPINT = interruptID;  
}







cHwUSB_0::EndpointOUT::EndpointOUT( void )
{
}


void cHwUSB_0::EndpointOUT::init( BYTE numIn )
{
  num   = numIn;
  outep = ((USB_OTG_OUTEndpointTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0xB00) + (num)*((uint32_t )0x20)));
  fifo  = (volatile DWORD                  *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x1000)         + (num)*((uint32_t )0x1000)   );
}
 

void cHwUSB_0::EndpointOUT::config( WORD epMPS, BYTE epType )
{
  rxBuf.maxpacket = epMPS;

  if( num == 0 )
  {
    epMPS = 0; 
  }
  
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINTMSK |= ((uint32_t)0xFFFF0000) & ((1 << (num)) << 16);
  
  if( !(outep->DOEPCTL & ((uint32_t)0x00008000)) )
  {
    outep->DOEPCTL |= (  (epMPS & ((uint32_t)0x000007FF) ) 
                       | (epType << 18 ) 
                       | (((uint32_t)0x10000000))
                       | (((uint32_t)0x00008000)));
  }
  
  if( num > 0 )
  {
    receive();
  }
}


void cHwUSB_0::EndpointOUT::flush( void )
{
  DWORD count = 200000;
 
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRSTCTL = ((uint32_t)0x00000010);
  
  while(    (((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRSTCTL & ((uint32_t)0x00000010)) 
         && (count--) );
}


void cHwUSB_0::EndpointOUT::reset()
{
  outep->DOEPINT = 0xFF;
}


void cHwUSB_0::EndpointOUT::start()
{
  if( outep->DOEPCTL & ((uint32_t)0x80000000) )
  {
    outep->DOEPCTL = (   ((uint32_t)0x40000000) 
                       | ((uint32_t)0x08000000)  );
  }
  else
  {
    outep->DOEPCTL = 0;
  }
  
  if( num == 0 )  
  {
    outep->DOEPTSIZ =   (((uint32_t)0x1FF80000) & (1 << 19))
                      | MAX_EP0_SIZE
                      | ((uint32_t)0x60000000);
  }
  else
  {
    outep->DOEPTSIZ = 0;
    outep->DOEPINT  = 0xFF;
  }
}


void cHwUSB_0::EndpointOUT::setStall( void )
{
  
  if( !(outep->DOEPCTL & ((uint32_t)0x80000000))  )
  {
    outep->DOEPCTL &= ~(((uint32_t)0x40000000)); 
  } 
  outep->DOEPCTL |= ((uint32_t)0x00200000);

  if( num == 0 )
  {
    outep->DOEPTSIZ = ( (((uint32_t)0x1FF80000) & (1 << 19))
                       | MAX_EP0_SIZE
                       | ((uint32_t)0x60000000) );  
  }
}


void cHwUSB_0::EndpointOUT::clrStall( void ) 
{
  outep->DOEPCTL &= ~((uint32_t)0x00200000);
  outep->DOEPCTL |=  ((uint32_t)0x10000000);
}


WORD cHwUSB_0::EndpointOUT::read( BYTE *dataPtr, WORD len )
{
  len = MIN( len, (WORD)rxBuf.size );
  
  for( WORD i = 0; i < len; i++ )
  {
    dataPtr[i] = rxBuf.data[i];
  }
  rxBuf.size = 0;
  rxBuf.flag = false;

  return( len );
}


void cHwUSB_0::EndpointOUT::readFromFifo( WORD len )
{
  WORD cnt = (len + 3) / 4;

  __packed DWORD *dest = (__packed DWORD *)&rxBuf.data[0];

  rxBuf.size = len;
  rxBuf.flag = true;
  
  for( WORD  i = 0; i < cnt; i++, dest++ )
  {
    *dest = *fifo;    
  }
}


void cHwUSB_0::EndpointOUT::receive( void )
{
  WORD mps = rxBuf.maxpacket;
  WORD len = MIN( rxBuf.size, rxBuf.maxpacket );

  if( len == 0 )
  {
    receiveZLP();
  }
  else
  {
   BYTE pktcnt = (rxBuf.size + mps -1)/ mps;
    
   outep->DOEPTSIZ  &= ~(   ((uint32_t)0x1FF80000) 
                          | ((uint32_t)0x0007FFFF) );
    
    outep->DOEPTSIZ |=  (  (((uint32_t)0x1FF80000) & (pktcnt << 19))
                          |(((uint32_t)0x0007FFFF) & (mps * pktcnt)) ); 
  
    outep->DOEPCTL  |=  (   ((uint32_t)0x04000000) 
                          | ((uint32_t)0x80000000) );  
  }
}


void cHwUSB_0::EndpointOUT::receiveZLP()
{
  outep->DOEPTSIZ &= ~(   ((uint32_t)0x1FF80000)
                        | ((uint32_t)0x0007FFFF) ); 
    
  outep->DOEPTSIZ |=  (  (((uint32_t)0x1FF80000) & (1 << 19))
                      |  (((uint32_t)0x0007FFFF) & rxBuf.maxpacket) );

  outep->DOEPCTL  |=  (   ((uint32_t)0x04000000) 
                        | ((uint32_t)0x80000000) );  
}


DWORD cHwUSB_0::EndpointOUT::getInterrupt( void )
{
  return( outep->DOEPINT & ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DOEPMSK );
}


void cHwUSB_0::EndpointOUT::clrInterrupt( DWORD interruptID )
{
  outep->DOEPINT = interruptID;  
}







cHwUSB_0 *cHwUSB_0::usbPtr = 0;


cHwUSB_0::cHwUSB_0( cHwUSBdesc &desc )

: cHwUSB( desc )

{
  usbPtr = this;

  for( WORD i = 0; i < NUM_OF_ENDPOINTS; i++ )
  {
    epIN [i].init( i );
    epOUT[i].init( i );
  }
}


void cHwUSB_0::start(void)
{




  cHwPinConfig::set( cHwPinConfig::OTG_FS_ID, cHwPinConfig::PULL_UP
                                             |cHwPinConfig::HIGH_SPEED
                                             |cHwPinConfig::OPEN_DRAIN );
  
  cHwPinConfig::set( cHwPinConfig::OTG_FS_DM, cHwPinConfig::NO_PUPD
                                             |cHwPinConfig::HIGH_SPEED
                                             |cHwPinConfig::PUSH_PULL );
  
  cHwPinConfig::set( cHwPinConfig::OTG_FS_DP, cHwPinConfig::NO_PUPD
                                             |cHwPinConfig::HIGH_SPEED
                                             |cHwPinConfig::PUSH_PULL);

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB2ENR |= ((uint32_t)0x00000080);              
    
  NVIC_EnableIRQ( OTG_FS_IRQn );
    
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GAHBCFG &= ~((uint32_t)0x00000001);     
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GUSBCFG |=  ((uint32_t)0x00000040);   
  CoreReset();                                      
                                                    
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GCCFG    = ((uint32_t)0x00010000);      
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GUSBCFG &= ~( ((uint32_t)0x20000000)   
                           |((uint32_t)0x40000000) ); 
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GUSBCFG |=  ( ((uint32_t)0x40000000) ); 

  for (uint32_t i = 0; i < 15 ; i++)
  {
    ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->DIEPTXF[i] = 0;
  }

  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GCCFG |= ((uint32_t)0x00080000);    
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GCCFG |= ((uint32_t)0x00200000);  
  *(volatile DWORD *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0xE00))        = 0;                         
  
  
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCFG  |= ( (3 <<  0)   
                        |(0 << 11)); 
  
  
  epIN [0].flush();                  
  epOUT[0].flush();
  
  
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DIEPMSK  = 0;
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DOEPMSK  = 0;
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINT    = 0xFFFFFFFF;
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINTMSK = 0;
  
  for (uint32_t i = 0; i < NUM_OF_ENDPOINTS; i++)
  {
    epIN[i].start();
    epOUT[i].start();
  }
  
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DIEPMSK &= ~(((uint32_t)0x00000100));  
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTMSK  = 0;                          
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTSTS  = 0xBFFFFFFF;                 

  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTMSK |= ((uint32_t)0x00000010);    
  
  
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTMSK |= (  ((uint32_t)0x00000800) 
                          | ((uint32_t)0x00001000) 
                          | ((uint32_t)0x00002000) 
                          | ((uint32_t)0x00040000) 
                          | ((uint32_t)0x00080000)   
                          | ((uint32_t)0x80000000) );
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTMSK |= (  ((uint32_t)0x40000000) 
                          | ((uint32_t)0x00000004)); 
 
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCTL |= ((uint32_t)0x00000002);             

  WORD offset = 0;
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRXFSIZ            = (  64                ); offset  = 64; 
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->DIEPTXF0_HNPTXFSIZ = (( 64 << 16) | offset); offset += 64; 
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->DIEPTXF[0]         = (( 64 << 16) | offset); offset += 64; 
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->DIEPTXF[1]         = (( 64 << 16) | offset); offset += 64; 
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->DIEPTXF[2]         = (( 64 << 16) | offset);               

  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCTL    &= ~((uint32_t)0x00000002);         
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GAHBCFG |=  ((uint32_t)0x00000001);      
}


inline void cHwUSB_0::isr(void)
{
  
  if( ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTSTS & ((uint32_t)0x00000001) ) 
  {
    return;
  }
  
  
  if( isInterruptPending( ((uint32_t)0x00000002) ) )
  {
    
    clrInterrupt( ((uint32_t)0x00000002));
  }
  
  
  if( isInterruptPending( ((uint32_t)0x00080000) ) )
  {
    DWORD interruptBits = getOutInterrupt();
    DWORD interruptType = 0;
    BYTE  epNum         = 0;
    
    while ( interruptBits )
    {
      if( interruptBits & 0x1 )
      {
        interruptType = epOUT[epNum].getInterrupt();
        
        if( interruptType & ((uint32_t)0x00000001) ) 
        {
          
          epOUT[epNum].receive();
          eventHandler( epNum, false ); 
          epOUT[epNum].clrInterrupt( ((uint32_t)0x00000001) );
        }
                
        if( interruptType & ((uint32_t)0x00000008) )
        {
          
          eventHandler( 0, true ); 
          epIN[0].transmit(true);
          epOUT[epNum].clrInterrupt( ((uint32_t)0x00000008) );
        }
        
        if( interruptType & ((uint32_t)0x00000010) )
        {
          epOUT[epNum].clrInterrupt( ((uint32_t)0x00000010));
        }
      }

      
      epNum++;
      interruptBits >>= 1;
    }
  }
  
  
  if( isInterruptPending( ((uint32_t)0x00040000) ) )
  {
    DWORD interruptBits = getInInterrupt();
    DWORD interruptType = 0;
    BYTE  epNum         = 0;
      
    while( interruptBits )
    {
      if( interruptBits & 0x1 )
      {
        interruptType = epIN[epNum].getInterrupt( );

        if( interruptType & ((uint32_t)0x00000001) )
        {
          ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DIEPEMPMSK = ~(0x1 << epNum);
          epIN[epNum].clrInterrupt( ((uint32_t)0x00000001) );
          epOUT[0].receiveZLP();
          eventHandler( epNum | 0x80, true );          
          epIN[epNum].transmit( false );
        }
         
        if( interruptType & ((uint32_t)0x00000008) )
        {
          epIN[epNum].clrInterrupt( ((uint32_t)0x00000008) );
        }
        
        if( interruptType & ((uint32_t)0x00000010) )
        {
          epIN[epNum].clrInterrupt( ((uint32_t)0x00000010) );
        }
        
        if( interruptType & ((uint32_t)0x00000040) )
        {
          epIN[epNum].clrInterrupt( ((uint32_t)0x00000040) );
        }
        
        if( interruptType & ((uint32_t)0x00000002) )
        {
          epIN[epNum].clrInterrupt( ((uint32_t)0x00000002) );
        }
        
        if( interruptType & ((uint32_t)0x00000080) )
        {
          epIN[epNum].writeToFifo();
          epIN[epNum].clrInterrupt( ((uint32_t)0x00000080) );
        }
      }

      
      epNum++;
      interruptBits >>= 1;
    }
  }
  
  
  if( isInterruptPending( ((uint32_t)0x80000000) ) )
  {    
    ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCTL &= ~((uint32_t)0x00000001);
    clrInterrupt( ((uint32_t)0x80000000) );
  }
  
  
  if( isInterruptPending( ((uint32_t)0x00000800) ) )
  {
    clrInterrupt( ((uint32_t)0x00000800) );
  }
  
  
  if( isInterruptPending( ((uint32_t)0x00001000) ) )
  {
    reset();
    clrInterrupt( ((uint32_t)0x00001000) );
  }
  
  
  if( isInterruptPending( ((uint32_t)0x00002000) ) )
  {
    ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCTL |= ((uint32_t)0x00000100);
    
    ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GUSBCFG &= ~(  ((uint32_t)0x00003C00) );    
    ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GUSBCFG |=  (  ((uint32_t)0x00000400) 
                             | ((uint32_t)0x00001000) );  
      
    epOUT[0].config( MAX_EP0_SIZE );
    epIN [0].config( MAX_EP0_SIZE );    
    
    clrInterrupt( ((uint32_t)0x00002000) );
  }
    
  
  if( isInterruptPending( ((uint32_t)0x00000010) ) )
  {
    ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTMSK &= ~(((uint32_t)0x00000010)); 
        
    DWORD temp = ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRXSTSP;
    
    BYTE epnum = temp & ((uint32_t)0x0000000F);
   
    if( ((temp & ((uint32_t)0x001E0000)) >> 17) ==  2 ) 
    { 
      if( temp & ((uint32_t)0x00007FF0) )
      { 
        epOUT[epnum].readFromFifo( (temp & ((uint32_t)0x00007FF0)) >> 4 );
      }
    }
    else if( ((temp & ((uint32_t)0x001E0000)) >> 17) ==  6 ) 
    {
      epOUT[epnum].readFromFifo( 8 );
    }
    ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTMSK |= (((uint32_t)0x00000010)); 
  }
  
  
  if( isInterruptPending( ((uint32_t)0x00000008) ) )
  {
    clrInterrupt( ((uint32_t)0x00000008) );
  }
  
  
  if( isInterruptPending( ((uint32_t)0x40000000) ) )
  {
    clrInterrupt( ((uint32_t)0x40000000) );
  } 
  
  
  if( isInterruptPending( ((uint32_t)0x00000004) ) )
  {
    DWORD temp = ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GOTGINT;
    ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GOTGINT |= temp;
  }
}


void cHwUSB_0::reset( void ) 
{
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCTL &= ~((uint32_t)0x00000001); 
  
  epIN[0].flush();
      
  for( WORD i = 0; i < NUM_OF_ENDPOINTS ; i++ )
  {
    epIN [i].reset();
    epOUT[i].reset();
  }

  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINT     = 0xFFFFFFFF;
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINTMSK |= 0x10001;
  
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DOEPMSK |= (  ((uint32_t)0x00000008) 
                          | ((uint32_t)0x00000001) 
                          | ((uint32_t)0x00000002) 
                          | ((uint32_t)0x00000010) );
  
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DIEPMSK |= (  ((uint32_t)0x00000008) 
                          | ((uint32_t)0x00000001) 
                          | ((uint32_t)0x00000002) );

  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCFG    &= ~((uint32_t)0x000007F0); 
}


void cHwUSB_0::configure( BYTE flag ) 
{
}


void cHwUSB_0::setAddress( BYTE adr )
{
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCFG &= ~((uint32_t)0x000007F0);
  ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DCFG |=  ((uint32_t)0x000007F0) & (adr << 4);
  
  epIN[0].transmitZLP();
}


void cHwUSB_0::configEP( BYTE epAddr, 
                         WORD epMaxPacketSize, 
                         BYTE epType ) 
{
  BYTE epNum = epAddr&0x7F;
  
  if( epNum < NUM_OF_ENDPOINTS )
  {
    if( epAddr & 0x80 )
    {
      epIN[epNum].config( epMaxPacketSize, epType );
    }
    else
    {    
      epOUT[epNum].config( epMaxPacketSize, epType );
    }

    clrStallEP( epAddr );

    epIN[epNum].transmitZLP();
  }
}


void cHwUSB_0::setStallEP (BYTE epAddr) 
{
  BYTE epNum = epAddr&0x7F;
  
  if( epNum < NUM_OF_ENDPOINTS )
  {
    if( epAddr & 0x80 )
    {
      epIN[epNum].setStall();
    }
    else
    {
      epOUT[epNum].setStall();
    }
  }
}


void cHwUSB_0::clrStallEP (BYTE epAddr) 
{
  BYTE epNum = epAddr&0x7F;
  
  if( epNum < NUM_OF_ENDPOINTS )
  {
    if( epAddr & 0x80 )
      epIN[epNum].clrStall();
    else
      epOUT[epNum].clrStall();
  }
}


WORD cHwUSB_0::readEP( BYTE  epAddr, 
                       BYTE *dataPtr, 
                       WORD  len )
{
  BYTE epNum = epAddr&0x7F;
  
  if( epNum < NUM_OF_ENDPOINTS )
  {
    return( epOUT[epNum].read( dataPtr, len ) );
  }
  return( 0 );
}


WORD cHwUSB_0::writeEP( BYTE  epAddr, 
                        BYTE *dataPtr, 
                        WORD  len ) 
{
  BYTE epNum = epAddr&0x7F;
  
  if( epNum < NUM_OF_ENDPOINTS )
  {
    return( epIN[epNum].write( dataPtr, len ) );
  }
  return( 0 );
}


BYTE cHwUSB_0::CoreReset( void )
{
  DWORD count = 200000;

  
  while( !(((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRSTCTL & ((uint32_t)0x80000000)) )
  {
    if( !count-- )
    {
      return false;
    }
  }
  
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRSTCTL |= ((uint32_t)0x00000001);  
 
  count = 200000;
  while( ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GRSTCTL & ((uint32_t)0x00000001) )
  {
    if( !count-- )
    {
      return false;
    }
  }
  
  return true;
}


DWORD cHwUSB_0::getInInterrupt( void )
{
  return(    ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINT
           & ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINTMSK 
           & 0xFFFF               );
}


DWORD cHwUSB_0::getOutInterrupt( void )
{
  return( (   ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINT 
            & ((USB_OTG_DeviceTypeDef *)((DWORD)((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000)) + ((uint32_t )0x800) ))->DAINTMSK 
            & 0xFFFF0000           ) >> 16);
}


BYTE cHwUSB_0::isInterruptPending( DWORD interuptID )
{
  return( (   ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTSTS 
            & ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTMSK 
            & interuptID          ) == interuptID );  
}


void cHwUSB_0::clrInterrupt( DWORD interuptID )
{
  ((USB_OTG_GlobalTypeDef *) ((uint32_t )0x50000000))->GINTSTS |= interuptID;
}



extern "C" 
{
  void OTG_FS_IRQHandler(void)
  {
    cSystem::disableInterrupt();
    cHwUSB_0::usbPtr->isr();
    cSystem::enableInterrupt();
  }
}


#line 34 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/STM32F4xx/MCU_STM32F4xx.cpp"


#line 17 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.cpp"


#line 43 "..\\EmbSysLib\\Lib\\Src\\Hardware/MCU/MCU.cpp"



#line 41 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"





#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204.cpp"





 







cHwDisp_DIP204::cHwDisp_DIP204( cHwPort &portIn )

: cHwDisplay( NUM_OF_LINE, NUM_OF_COLUM ), port(portIn)

{
  port.setMode( 0xFF, cHwPort::Out );
  init();
}


void cHwDisp_DIP204::clear( void )
{
  writeCmd( 0x01 );	
}


void cHwDisp_DIP204::gotoTextPos( BYTE lineIn, BYTE columIn )
{
  line  = lineIn;
  colum = columIn;
  
  if(line < NUM_OF_LINE && colum < NUM_OF_COLUM)
  {
    writeCmd(0x80 | ((line<<5)+(colum&0x1F)) ); 
  }
}


void cHwDisp_DIP204::putChar( char c )
{
  if(line < NUM_OF_LINE && colum < NUM_OF_COLUM)
  {
    writeDat( c ); 
    colum++;       
  }
}







 

void cHwDisp_DIP204::init( void )
{
  
  port.clr(       0xFF );
  port.set( DIP204_RES );

  waitBusy();

  
  
  port.set( DIP204_EN   | 0x02 );
  port.clr( DIP204_EN          );
  port.clr(~DIP204_RES         );

  waitBusy();

  writeCmd(  (1<<5)  
            |(0<<4)	 
            |(0<<3)  
            |(1<<2)  
            |(0<<1)  
            |(0<<0));

  writeCmd(  (1<<3)  
            |(0<<2)  
            |(1<<1)  
            |(1<<0));

  writeCmd(  (1<<5)  
            |(0<<4)	 
            |(0<<3)  
            |(0<<2)  
            |(0<<1)  
            |(0<<0));

  writeCmd(  (1<<0));

  writeCmd(  (1<<3)  
            |(1<<2)  
            |(0<<1)  
            |(0<<0));

  
}


void cHwDisp_DIP204::waitBusy( void )
{
  BYTE ret;

  do
  {
    port.set(  DIP204_RW|DIP204_EN|DIP204_RES | 0x0F );
    ret = port.get();
    port.clr(~(                    DIP204_RES       ));
    port.set(  DIP204_RW|DIP204_EN|DIP204_RES | 0x0F );
    port.get();
    port.clr(~(                    DIP204_RES       ));
  } while( ret & 0x08);
}


void cHwDisp_DIP204::writeCmd( BYTE cmd )
{
  port.set(  DIP204_EN|DIP204_RES | (cmd>>4  ));
  port.clr(  DIP204_EN                        );
  port.clr(~(          DIP204_RES            ));
  port.set(  DIP204_EN|DIP204_RES | (cmd&0x0f));
  port.clr(  DIP204_EN                        );
  port.clr(~(          DIP204_RES            ));
  waitBusy();
}


void cHwDisp_DIP204::writeDat( BYTE dat )
{
  port.set(        DIP204_RS|DIP204_EN|DIP204_RES | (dat>>4  ));
  port.clr(                  DIP204_EN                        );
  port.clr((BYTE)~(DIP204_RS|          DIP204_RES            ));
  port.set(        DIP204_RS|DIP204_EN|DIP204_RES | (dat&0x0f));
  port.clr(                  DIP204_EN                        );
  port.clr(~(                          DIP204_RES            ));
  waitBusy();
}


#line 47 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204spi.cpp"







 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204spi.h"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204spi.h"
#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_DIP204spi.cpp"







cHwDisp_DIP204spi::cHwDisp_DIP204spi( cHwSPImaster::Device &spiIn )

: cHwDisplay( NUM_OF_LINE, NUM_OF_COLUMN ), 
  spi( spiIn )

{
  init();
}


void cHwDisp_DIP204spi::clear( void )
{
  writeCmd( 0x01 );	
}


void cHwDisp_DIP204spi::gotoTextPos( BYTE lineIn, BYTE columnIn )
{
  line   = lineIn;
  column = columnIn;
  
  
  if( line < NUM_OF_LINE && column < NUM_OF_COLUMN )
  {
    
    writeCmd( 0x80 | ((line<<5)+(column&0x1F)) ); 
  }
}


void cHwDisp_DIP204spi::putChar( char c )
{
  if( line < NUM_OF_LINE && column < NUM_OF_COLUMN )
  {
    writeDat( c ); 
    column++;       
  }
}


void cHwDisp_DIP204spi::init( void )
{
  writeCmd(  (1<<5)  
            |(1<<4)	 
            |(0<<3)  
            |(1<<2)  
            |(0<<1)  
            |(0<<0));

  writeCmd(  (1<<3)  
            |(0<<2)  
            |(1<<1)  
            |(1<<0));

  writeCmd(  (1<<5)  
            |(1<<4)	 
            |(0<<3)  
            |(0<<2)  
            |(0<<1)  
            |(0<<0));

  writeCmd(  (1<<0));

  writeCmd(  (1<<3)  
            |(1<<2)  
            |(0<<1)  
            |(0<<0));

  
}


void cHwDisp_DIP204spi::waitBusy( void )
{
  BYTE data[2];
  WORD i = 0x0FFF;

  do
  {
    data[0] = (0x1F)    
              | (0<<6)  
              | (1<<5); 
    data[1] = 0;
    spi.transceive( data, 2);
  } while( i-- && data[1] & 0x80);
}


void cHwDisp_DIP204spi::writeCmd( BYTE cmd )
{
  BYTE data[3];
  
  data[0] =   (0x1F)  
            | (0<<6)  
            | (0<<5); 
  data[1] = (cmd   ) & 0x0F;
  data[2] = (cmd>>4) & 0x0F;
  spi.transceive( data, 3);
  
  waitBusy();
}


void cHwDisp_DIP204spi::writeDat( BYTE dat )
{
  BYTE data[3];
  
  data[0] =   (0x1F)  
            | (1<<6)  
            | (0<<5); 
  data[1] = (dat    ) & 0x0F;
  data[2] = (dat>>4 ) & 0x0F;
  spi.transceive( data, 3);

  waitBusy();
}


#line 48 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_ILI9341spi.cpp"





 







cHwDisp_ILI9341spi::cHwDisp_ILI9341spi( cHwSPImaster::Device &spiIn, 
                                        cHwPort::Pin         &pinBL,
                                        cHwDisplayFont        fntIn, 
                                        BYTE                  zoomIn )

: cHwDisplayGraphic( fntIn, zoomIn ), 
  spi( spiIn )

{ 
  pinBL.setMode( cHwPort::Out );
  pinBL.clr(); 
  init();
  pinBL.set(); 
}


void cHwDisp_ILI9341spi::clear( void )
{
  setArea( 0, 0, WIDTH, HEIGHT );
  
  for( WORD x = 0; x < WIDTH; x++)
  {
    for( WORD y = 0; y < HEIGHT; y++)
    {
      setPixel( BackColor );
    }
  }
}


void cHwDisp_ILI9341spi::setArea( WORD x, 
                                  WORD y,
                                  WORD w,
                                  WORD h )
{
  writeCmd( 0x2A ); 
  writeDatWord( x     );
  writeDatWord( x+w-1 );

  writeCmd( 0x2B ); 
  writeDatWord( y     );
  writeDatWord( y+h-1 );

  writeCmd( 0x2C ); 
}


void cHwDisp_ILI9341spi::setPixel( WORD color, 
                                   WORD x, 
                                   WORD y ) 
{
  setArea( x, y, 1, 1 );   
  writeCmd( 0x2C );        
  writeDatWord( color );
}


void cHwDisp_ILI9341spi::setPixel( WORD color ) 
{
  writeDatWord( color ); 
}


void cHwDisp_ILI9341spi::init( void ) 
{ 
  cSystem::delayMilliSec( 20 );

  writeCmd( 0x28 ); 
                    

  writeCmd( 0x01 ); 
                    

  cSystem::delayMilliSec( 20 );
  
  writeCmd( 0xCF ); 
                    
  writeDat(  0x00 );   

  writeDat( (0x81)     
           |(0<<3));   

  writeDat(  3<<4 );   
  

  writeCmd( 0xED ); 
                    
  writeDat( (1<<6)     
           |(2<<4)     
           |(1<<2)     
           |(0<<0));   

  writeDat( (0<<4)     
           |(3<<0));   

  writeDat( (1<<4)     
           |(2<<0));   

  writeDat( (1<<7)     
           |(1<<0));   
  

  writeCmd( 0xE8 ); 
                    
  writeDat( (1<<7)     
           |(1<<2)     
           |(1<<0));   

  writeDat( (0<<4)     
           |(1<<0));   

  writeDat( (7<<4)     
           |(1<<3)     
           |(1<<0));   
  

  writeCmd( 0xCB ); 
                    
  writeDat(  0x39 );   
  writeDat(  0x2C );   
  writeDat(  0x00 );   

  writeDat( (3<<4)     
           |(4<<0));   

  writeDat( (2<<0));   
  

  writeCmd( 0xF7 ); 
                    
  writeDat( (2<<4));   
  

  writeCmd( 0xEA ); 
                    
  writeDat( (0<<6)     
           |(0<<4)     
           |(0<<2)     
           |(0<<0));   

  writeDat( 0x00 );    

    
  writeCmd( 0xC0 ); 
                    
  writeDat( 0x26);     
  

  writeCmd( 0xC1 ); 
                    
  writeDat( 0x01 );    
  

  writeCmd( 0xC5 ); 
                    
  writeDat( 0x35 );    
  writeDat( 0x3E );    
  
 
  writeCmd( 0xC7 ); 
                    
  writeDat( (1<<7)     
           | 0x3E );   
  
   
  writeCmd( 0xB1 ); 
                    
  writeDat( (0<<0));   
  writeDat(  0x1B );   


  writeCmd( 0xB6 ); 
                    
  writeDat( (2<<2)      
           |(2<<0));    

  writeDat( (1<<7)       
           |(0<<6)       
           |(0<<5)       
           |(0<<4)       
           |(2<<0));     

  writeDat( 0x27 );      

  writeDat( 0x00 );      
  

  writeCmd( 0xB7 ); 
                    
  writeDat( (1<<2)     
           |(1<<1)     
           |(1<<0));
  

  writeCmd( 0x3A ); 
                    
  writeDat( (5<<4)     
           |(5<<0));   


  writeCmd( 0x36 ); 
                    
  writeDat( (7<<5)     
                       
                       
                       
                       
           |(0<<4)     
           |(1<<3)     
           |(0<<2));   
  
  
  writeCmd( 0x11 ); 
                    
     
  cSystem::delayMilliSec( 20 );

  writeCmd( 0x29 ); 
                    

  cSystem::delayMilliSec( 20 );
}


__inline void cHwDisp_ILI9341spi::writeCmd( BYTE cmd ) 
{
  spi.writeExt( 0, cmd );
}


__inline void cHwDisp_ILI9341spi::writeDat( BYTE dat ) 
{
  spi.writeExt( 1, dat );
}


 __inline void cHwDisp_ILI9341spi::writeDatWord( WORD dat ) 
{
  spi.writeExt( 1, dat );
}


#line 49 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_SPFD5408Bspi.cpp"





 







cHwDisp_SPFD5408Bspi::cHwDisp_SPFD5408Bspi( cHwSPImaster::Device  &spiIn, 
                                            cHwPort::Pin          &pinBL,
                                            cHwDisplayFont         fontIn, 
                                            BYTE                   zoomIn )

: cHwDisplayGraphic( fontIn, zoomIn ),
  spi( spiIn )

{
  pinBL.setMode( cHwPort::Out );
  pinBL.clr(); 
  init();
  pinBL.set(); 
}


void cHwDisp_SPFD5408Bspi::clear( void )
{
  setArea( 0, 0, WIDTH, HEIGHT );

  for( WORD x = 0; x < WIDTH; x++)
  {
    for( WORD y = 0; y < HEIGHT; y++)
    {
      setPixel( BackColor );
    }
  }
}


__inline void cHwDisp_SPFD5408Bspi::maxWindow( void )
{
  if( !isMaxWindow )
  {
    
    writeReg( 0x50,        0 ); 
    writeReg( 0x51, HEIGHT-1 ); 
    writeReg( 0x52,        0 ); 
    writeReg( 0x53,  WIDTH-1 ); 

    isMaxWindow = true;
  }
}


__inline void cHwDisp_SPFD5408Bspi::setArea( WORD x,
                                            WORD y,
                                            WORD w,
                                            WORD h )
{
  
  writeReg( 0x50, y     ); 
  writeReg( 0x51, y+h-1 ); 
  writeReg( 0x52, x     ); 
  writeReg( 0x53, x+w-1 ); 

  
  writeReg( 0x20, y );     
  writeReg( 0x21, x );     

  
  writeCmd( 0x22 );        

  isMaxWindow = false;
}


__inline void cHwDisp_SPFD5408Bspi::setPixel( WORD color,
                                             WORD x,
                                             WORD y )
{
  maxWindow();

  
  writeReg( 0x20, y );     
  writeReg( 0x21, x );     
  writeReg( 0x22, color ); 
}


__inline void cHwDisp_SPFD5408Bspi::setPixel( WORD color )
{
  
  writeDat( color ); 
}


void cHwDisp_SPFD5408Bspi::init( void )
{
  cSystem::delayMilliSec( 50 );

  
  
  
  writeReg(0x07, 0); 

  
  
  
  writeReg(0x01, 
                 (1<<8));    

  writeReg(0x02, 
                 (6<<8));    

  writeReg(0x04, 
                 0);         

  writeReg(0x08, 
                 (0x07<<0)   
                |(0x02<<8)); 

  writeReg(0x09, 
                 0);         

  writeReg(0x0A, 
                 0);        

  writeReg(0x0C, 
                 (0<<0)     
                |(0<<4)     
                |(0<<8));   

  writeReg(0x0D, 
                 0);        

  writeReg(0x0F, 
                 (0<<0)     
                |(0<<1)     
                |(0<<3)     
                |(0<<4));   

  
  
  
  writeReg(0x10, 0); 
  writeReg(0x11, 0); 
  writeReg(0x12, 0); 
  writeReg(0x13, 0); 

  cSystem::delayMilliSec( 200 ); 

  writeReg(0x10, 
                 (0<< 1)  
                |(0<< 2)  
                |(3<< 4)  
                |(1<< 7)  
                |(2<< 8)  
                |(1<<12));

  writeReg(0x11, 
                 (7<<0)  
                |(0<<4)  
                |(0<<8));

  cSystem::delayMilliSec( 50 );

  writeReg(0x12, 
                 (5<<0)  
                |(1<<7)  
                |(1<<8));

  cSystem::delayMilliSec( 50 );

  writeReg(0x13, 
                 (0x14<<8));

  writeReg(0x29, 
                  (0x0E<<0));

  writeReg(0x2A, 
                   (0<<0)   
                  |(0<<0)); 

  cSystem::delayMilliSec( 50 );

  
  
  
  writeReg(0x60, 
                  (   0<< 0)  
                 |(0x27<< 8)  
                 |(   0<<15));

  writeReg(0x61, 
                  (1<<0)  
                 |(0<<1)  
                 |(0<<2));

  writeReg(0x6A, 
                  0); 

  
  
  
  
  writeReg(0x80, 0x0000); 
  writeReg(0x81, 0x0000); 
  writeReg(0x82, 0x0000); 

  
  writeReg(0x83, 0x0000); 
  writeReg(0x84, 0x0000); 
  writeReg(0x85, 0x0000); 

  
  
  
  writeReg(0x90, 
                  (0x10<<0)  
                 |(   0<<8));

  writeReg(0x92, 
                  (0<<8));   

  writeReg(0x93, 
                  (3<<0));   

  writeReg(0x95, 
                  (0x10<<0)  
                 |(   1<<8));

  writeReg(0x97, 
                  (0<<8));   

  writeReg(0x98, 
                  (0<<0));   

  
  
  
  writeReg(0x03, 
                 (1<<3)   
                |(3<<4)   
                |(0<<7)   
                |(1<<12)  
                |(0<<14)  
                |(0<<15));

  isMaxWindow = false;

  maxWindow();

  
  
  
  writeReg(0x07, 
                  (1<< 1)  
                 |(0<< 3)  
                 |(1<< 4)  
                 |(1<< 8)  
                 |(0<<12));
}


__inline void cHwDisp_SPFD5408Bspi::writeCmd( WORD cmd )
{
  BYTE buf[] = { (   0x70   
                   |(0<<1)  
                   |(0<<0)),
                  (BYTE)(cmd>>8),
                  (BYTE)(cmd&0xFF) };

  spi.write( buf, sizeof(buf) );
}


__inline void cHwDisp_SPFD5408Bspi::writeDat( WORD dat )
{
  BYTE buf[] = { (  0x70     
                   |(1<<1)   
                   |(0<<0)), 
                 (BYTE)(dat>>8),
                 (BYTE)(dat&0xFF) };

  spi.write( buf, sizeof(buf) );
}


 __inline void cHwDisp_SPFD5408Bspi::writeReg( BYTE reg, WORD val )
{
  writeCmd( reg );
  writeDat( val );
}


#line 50 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Framebuffer.cpp"





 


#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Framebuffer.cpp"








cHwDisp_Framebuffer::cHwDisp_Framebuffer( uint8_t *framebuffer,
                                        cHwDisplayFont        fntIn, 
                                        BYTE                  zoomIn )

: cHwDisplayGraphic( fntIn, zoomIn ), 
  buffer( framebuffer )

{ 
	resetArea();
	
	clear();
}


void cHwDisp_Framebuffer::clear( void )
{
  memset(buffer, BackColor, WIDTH*HEIGHT);
}


void cHwDisp_Framebuffer::setArea( WORD x, 
                                  WORD y,
                                  WORD w,
                                  WORD h )
{
	pAX = x;
	pAY = y;
	pAW = w;
	pAH = h;
	
	pX = pAX;
	pY = pAY;
}


void cHwDisp_Framebuffer::setPixel( WORD color, 
                                   WORD x, 
                                   WORD y ) 
{
  *(buffer + y * WIDTH + x) = (uint8_t)color;
}


void cHwDisp_Framebuffer::resetArea() 
{
	pX = 0;
	pY = 0;
	
	pAX = 0;
	pAY = 0;
	pAW = WIDTH;
	pAH = HEIGHT;
}


void cHwDisp_Framebuffer::setPixel( WORD color ) 
{
	setPixel(color, pX, pY);
	
	pX++;
	if (pX >= pAX + pAW)
	{
		pX = pAX;
		pY++;
		
		if (pY >= pAY + pAH)
		{
			pY = pAY;
		}
	}
  
}


#line 51 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Terminal.cpp"





 


#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Disp_Terminal.cpp"







cHwDisp_Terminal::cHwDisp_Terminal( cHwUART &uartIn )

: cHwDisplay( NUM_OF_LINE, NUM_OF_COLUM ), 
  uart(uartIn)

{
  clear();
}


inline void cHwDisp_Terminal::clear( void )
{
  sendESC("[2J");
}


inline void cHwDisp_Terminal::gotoTextPos( BYTE lineIn, BYTE columIn )
{
  char str[12];
  line  = lineIn;
  colum = columIn;

  
  if( line < NUM_OF_LINE && colum < NUM_OF_COLUM )
  {
    uart.set( '\r' ); 
    uart.set( '\n' ); 
    sprintf( str, "[%02d;%02df", (WORD)line  + 1,
                                 (WORD)colum + 1 );
    sendESC( str );
  }
}


inline void cHwDisp_Terminal::putChar( char c )
{
  if( line < NUM_OF_LINE && colum < NUM_OF_COLUM )
  {
    uart.set( c ); 
    colum++;       
  }
}


void cHwDisp_Terminal::sendESC( const char *seq )
{
  uart.set( 27 );
  for( BYTE i = 0; seq[i] != 0; i++ )
  {
    uart.set( seq[i] );
  }
}
       

#line 52 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX5308.cpp"





 


#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX5308.cpp"







cHwDAC_MAX5308::cHwDAC_MAX5308( cHwSPImaster::Device &spiIn )

: cHwDAC( 8 ),
  spi( spiIn )

{
  spi.write( (WORD)0x1000 ); 
  spi.write( (WORD)0xFFFF ); 
}


void cHwDAC_MAX5308::set( WORD value, BYTE ch )
{
  WORD data = (value >> 4) & 0x0FF3; 
  WORD ctrl = (ch&0x07)+2;           

  spi.write( (WORD)(  (ctrl<<12)     
                     |(data<< 0) )); 
}


#line 53 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MAX521.cpp"





 







cHwDAC_MAX521::cHwDAC_MAX521( cHwI2Cmaster &i2cIn,
                              BYTE          hwAddrIn )

: cHwDAC( 8 ), i2c(i2cIn, baseAdr | ( (hwAddrIn&0x03) << 1 ))

{
  
}


inline void cHwDAC_MAX521::set( WORD value, BYTE ch )
{
  i2c.write( ch, value>>8 );
}


#line 54 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4441.cpp"





 







cHwDAC_MCP4441::cHwDAC_MCP4441( cHwI2Cmaster &i2cIn, BYTE hwAddrIn )

: cHwDAC( 4 ), i2c(i2cIn, baseAdr | ( (hwAddrIn&0x03) << 1 ))

{
}


void cHwDAC_MCP4441::set( WORD value, BYTE ch )
{
  BYTE commandByte;
  BYTE dataByte;
  BYTE memAddr;

  value = value >> 9; 

  switch(ch)
  {
    default:
    case 0:  memAddr = 0x00; break;
    case 1:  memAddr = 0x01; break;
    case 2:  memAddr = 0x06; break;
    case 3:  memAddr = 0x07; break;
  };

  commandByte =   (memAddr<<4)        
                | (0x00   <<2)        
                | ((value&0x0300)>>8);

  dataByte = value&0x00FF;         

  i2c.write( commandByte, dataByte );
}


#line 55 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4922.cpp"





 


#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/DAC_MCP4922.cpp"







cHwDAC_MCP4922::cHwDAC_MCP4922( cHwSPImaster::Device &spiIn,
                                BYTE                  gainIn )

: cHwDAC( 2 ),
  spi( spiIn )

{
  ga = gainIn?0:1;
}


void cHwDAC_MCP4922::set( WORD value, BYTE ch )
{
  BYTE ctrl = (ch<<7)   
             |( 0<<6)   
             |(ga<<5)   
             |( 1<<4);  

  spi.write( (WORD)(   ((WORD)ctrl<<8)
                     | (value     >>4) ));
}


#line 56 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/EEPROM_24C256.cpp"





 


#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/EEPROM_24C256.cpp"







cHwEEPROM_24C256::cHwEEPROM_24C256( cHwI2Cmaster &i2cIn, BYTE hwAddrIn )

: cHwMemory( 0x8000, 0x00 ) , i2c(i2cIn, baseAdr | ( (hwAddrIn&maskAdr) << 1 )) 
  
{
}


void cHwEEPROM_24C256::unlock( void )
{
}


void cHwEEPROM_24C256::lock( void )
{
}


void cHwEEPROM_24C256::writeByte( DWORD addr, BYTE data )
{
  
  BYTE i    = 20;
  BYTE test = 0;
  
  i2c.write( (WORD)addr, data );
  
  while( i-- )
  {
    cSystem::delayMilliSec( 1 );
    i2c.read( (WORD)addr, &test, sizeof(test) );
    
    if( !i2c.isError() && test == data )
    {
      break;
    }   
  }   
}


BYTE cHwEEPROM_24C256::readByte( DWORD addr )
{
  BYTE ret=0;  
  i2c.read( (WORD)addr, &ret, sizeof(ret) );
  return( ret );
}


#line 57 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"









 
#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"



   
   
   
   
   
   



   





   
#line 62 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   
#line 87 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   
#line 109 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   
#line 126 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   
#line 136 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"

   
#line 146 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   
#line 155 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   
#line 163 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   





   




   
#line 183 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   





   
#line 196 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   
#line 205 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"
   


   



   




   




   





   





   
#line 242 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Ethernet_ENC28J60.cpp"


   
   
   
   
   

   

   

   

   





cHwEthernet_Enc28j60::cHwEthernet_Enc28j60( const cNetAddr<6>  &addrPhyIn, 
  cHwSPImaster::Device &spiIn )

: cHwEthernet( addrPhyIn ),
   spi( spiIn ) ,
   addrPhy( addrPhyIn )

{
  Init(addrPhyIn);
  cSystem::delayMilliSec(10);
  InitPhy();
}


WORD cHwEthernet_Enc28j60::getType( )
{
  cHwEthernet_Header *eth =(cHwEthernet_Header *)buf;

  if     ( plen >= sizeof( cNetIP_Msg ) && eth->type == TYPE_IP )
  {
    return( TYPE_IP );
  }
  else if( plen >= sizeof( cNetARP_Msg ) && eth->type == TYPE_ARP )
  {
    return( TYPE_ARP );
  }
  else
  {
    return( TYPE_UNDEF );
  }
}



uint8_t cHwEthernet_Enc28j60::ReadOp(uint8_t op, uint8_t address)
{
  BYTE data[3] = { op | (address & 0x1F),
                   0x00,
	                 0x00 };

  if( address & 0x80 ) 

  {
    spi.transceive( data, 3 );
    return( data[2] );
  }
  else
  {
    spi.transceive( data, 2 );
    return( data[1] );
  }
}


void cHwEthernet_Enc28j60::WriteOp(uint8_t op, uint8_t address, uint8_t dataIn)
{
  BYTE data[2] = { op | (address & 0x1F),
                   dataIn };

  spi.write( data, 2 );
}


void cHwEthernet_Enc28j60::ReadBuffer(uint16_t len, uint8_t* data)
{
  spi.start();
  spi.spi.transceiveByte( (BYTE)0x3A );
  
  for(WORD i=0;i<len;i++)
    data[i] = spi.spi.transceiveByte( 0x00 );
  data[len] = '\0';
  spi.stop();
  
}


void cHwEthernet_Enc28j60::WriteBuffer(uint16_t len, uint8_t* data)
{
  spi.start();
  spi.spi.transceiveByte( (BYTE)0x7A );
  
  for(WORD i=0;i<len;i++)
    spi.spi.transceiveByte( data[i] );
  spi.stop();
}


void cHwEthernet_Enc28j60::SetBank(uint8_t address)
{
   
   if((address & 0x60) != Bank)
   {
      
      WriteOp(0xA0, 0x1F, (0x02|0x01));
      WriteOp(0x80, 0x1F, (address & 0x60)>>5);
      Bank = (address & 0x60);
   }
}


uint8_t cHwEthernet_Enc28j60::Read(uint8_t address)
{
   SetBank(address);
   return ReadOp(0x00, address);
}


void cHwEthernet_Enc28j60::WriteByte(uint8_t address, uint8_t data)
{
   SetBank(address);
   WriteOp(0x40, address, data);
}


void cHwEthernet_Enc28j60::WriteWord(uint8_t address, WORD data)
{
   SetBank(address);
   WriteOp(0x40, address, data&0xFF);
   SetBank(address+1);
   WriteOp(0x40, address+1, data>>8);
}



void cHwEthernet_Enc28j60::PhyWrite(uint8_t address, uint16_t data)
{
   WriteByte((0x14|0x40|0x80), address);         
   WriteWord((0x16|0x40|0x80), data);                
   while(Read((0x0A|0x60|0x80)) & 0x01) 
   {
      cSystem::delayMicroSec(15);
   }
}




void cHwEthernet_Enc28j60::InitPhy (void)
{
	 
	
	
	
	
	PhyWrite(0x14,0x880);
	cSystem::delayMilliSec(500);
	
	
	
	PhyWrite(0x14,0x990);
	cSystem::delayMilliSec(500);
	
	
	
	PhyWrite(0x14,0x880);
	cSystem::delayMilliSec(500);
	
	
	
	PhyWrite(0x14,0x990);
	cSystem::delayMilliSec(500);
	
   
   
   PhyWrite(0x14,0x476);
	cSystem::delayMilliSec(100);
}



void cHwEthernet_Enc28j60::Init(const cNetAddr<6>  &addrPhyIn)
{
   
   WriteOp(0xFF, 0, 0xFF);
   cSystem::delayMilliSec(50);
   
   
   
   
   
   
   
   NextPacketPtr = (WORD)0x0000;
   
   WriteWord((0x08|0x00), (WORD)0x0000 );
   
   WriteWord((0x0C|0x00), (WORD)0x0000 );
   
   WriteWord((0x0A|0x00), (WORD)(0x1FFF-0x0600-1) );
   
   WriteWord((0x04|0x00), (WORD)(0x1FFF-0x0600) );
   
   WriteWord((0x06|0x00), (WORD)0x1FFF );
   
   
   
   
   
   
   
   
   
   
   WriteByte((0x18|0x20), 0        );
   WriteByte((0x08|0x20), 0x3f);
   WriteByte((0x09|0x20), 0x30);
   WriteByte((0x10|0x20), 0xf9);
   WriteByte((0x11|0x20), 0xf7);
   
   
   
   
   WriteByte((0x00|0x40|0x80), 0x01 | 0x08 | 0x04);
   
   WriteByte((0x01|0x40|0x80), 0x00);
   
   WriteOp(0x80, (0x02|0x40|0x80), 0x20 | 0x10 | 0x02);
   
   WriteByte((0x06|0x40|0x80), 0x12);
   WriteByte((0x07|0x40|0x80), 0x0C);
   
   WriteByte((0x04|0x40|0x80), 0x12);
   
   
   WriteWord((0x0A|0x40|0x80), 1500 );
   
   
   
   WriteByte((0x04|0x60|0x80), addrPhyIn.addr[0]);
   WriteByte((0x05|0x60|0x80), addrPhyIn.addr[1]);
   WriteByte((0x02|0x60|0x80), addrPhyIn.addr[2]);
   WriteByte((0x03|0x60|0x80), addrPhyIn.addr[3]);
   WriteByte((0x00|0x60|0x80), addrPhyIn.addr[4]);
   WriteByte((0x01|0x60|0x80), addrPhyIn.addr[5]);
   
   PhyWrite(0x10, 0x0100);
   
   SetBank(0x1F);
   
   WriteOp(0x80, 0x1B, 0x80 | 0x40);
   
   WriteOp(0x80, 0x1F, 0x04);
}


uint8_t cHwEthernet_Enc28j60::getrev(void)     
{
	return(Read((0x12|0x60)));
}


void cHwEthernet_Enc28j60::PacketSend(uint8_t* packet, uint16_t len)
{
	
	WriteWord((0x02|0x00), (WORD)(0x1FFF-0x0600) );
	
	WriteWord((0x06|0x00), ((WORD)(0x1FFF-0x0600) + len) );
	
	WriteOp(0x7A, 0, 0x00);
	
	WriteBuffer(len, packet);
	
	WriteOp(0x80, 0x1F, 0x08);
   
	if((Read(0x1C) & 0x02))
   {
    
    Init(addrPhy);
    cSystem::delayMilliSec(10);
    InitPhy();

   }
}







bool cHwEthernet_Enc28j60::PacketReceive()
{
uint16_t maxlen = 1500;
	uint16_t rxstat;
	uint16_t len;
	
	
        
	if( Read((0x19|0x20)) ==0 )
   {
		return(0);
   }

	
	WriteWord((0x00|0x00), NextPacketPtr);

   
	NextPacketPtr  = ReadOp(0x3A, 0);
	NextPacketPtr |= ReadOp(0x3A, 0) << 8;

	
	len  = ReadOp(0x3A, 0);
	len |= ReadOp(0x3A, 0) << 8;
   len -= 4; 

   
	rxstat  = ReadOp(0x3A, 0);
	rxstat |= ReadOp(0x3A, 0) << 8;

	
   if (len>maxlen-1)
   {
      len=maxlen-1;
   }
   
   
   
   if ((rxstat & 0x80)==0)
   {
      
      len=0;
   }
   else
   {
      
      ReadBuffer(len, buf);
   }

   
	
	WriteWord((0x0C|0x00), NextPacketPtr);

   
	WriteOp(0x80, 0x1E, 0x40);

  plen = len;
	return( (plen==0)?false:true );
}


void cHwEthernet_Enc28j60::create( const cNetAddr<6> destAddr,
                                   const WORD        type )
{
  cHwEthernet_Header *eth = (cHwEthernet_Header *)buf;

  eth->destinationAddr = destAddr;
  eth->sourceAddr      = addrPhy;
  eth->type            = type;
}

#line 59 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_PCF8574.cpp"





 







cHwPort_PCF8574::cHwPort_PCF8574( cHwI2Cmaster &i2cIn, 
                                  BYTE          hwAddrIn,
                                  cHwTimer     *tPtrIn) 
: cHwPort() , i2c(i2cIn, baseAdr | ( (hwAddrIn&maskAdr) << 1 ))

{
  tPtr = tPtrIn;
  if( tPtr )
  {
    tPtr->add( this ); 
  }
  dir = 0x00;
}


void cHwPort_PCF8574::update( void )
{
  valueIn = i2c.read( );
  i2c.write( valueOut );
}


void cHwPort_PCF8574::setDir( MTYPE mask )
{


  
  
  
  dir |= mask;
  
  valueOut = (valueOut & dir) | ~dir;
  if( tPtr == 0 )
  {
    i2c.write( valueOut );
  }


}


void cHwPort_PCF8574::clrDir(MTYPE mask)
{


  
  

  dir &= ~mask;

  valueOut = (valueOut & dir) | ~dir;
  if( tPtr == 0 )
  {
    i2c.write( valueOut );
  }


}


void cHwPort_PCF8574::set( MTYPE mask )
{


  valueOut |= mask | ~dir;
  if( tPtr == 0 )
  {
    i2c.write( valueOut );
  }


}


void cHwPort_PCF8574::set( MTYPE mask, MTYPE value)
{


  valueOut |=  (mask &  value) | ~dir;  
  valueOut &= ~(mask & ~value) | ~dir;
  if( tPtr == 0 )
  {
    i2c.write( valueOut );
  }


}


void cHwPort_PCF8574::clr( MTYPE mask )
{


  valueOut &= ~mask | ~dir;
  if( tPtr == 0 )
  {
    i2c.write( valueOut );
  }


}


MTYPE cHwPort_PCF8574::get(void)
{



  valueIn = i2c.read();



  return(valueIn);
}


#line 61 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Port_Terminal.cpp"





 







cHwPort_Terminal::cHwPort_Terminal( cHwUART  &uartIn,
                                    MTYPE     lockIn,
                                    cHwTimer *tPtrIn )

: cHwPort() , uart(uartIn)

{
  lock = lockIn;
  tPtr = tPtrIn;
  if( tPtr )
  {
    tPtr->add( this ); 
  }

  escape = 0;
  latch  = 0;
  out    = 0;
  dir    = 0;
  last   = 0;
}


void cHwPort_Terminal::setMode( MTYPE mask, Mode mode )
{
  if( mode & cHwPort::Out )
  {
    dir |= mask; 
  }
  else
  {
    dir &= ~mask;
  }
}


void cHwPort_Terminal::setPinMode( BYTE pinId, Mode modeIn )
{
  setMode( (MTYPE)0x01 << pinId, modeIn );
}


void cHwPort_Terminal::set( MTYPE mask )
{
  out |= mask;
  if( tPtr == 0 )
  {
    update();
  }
}


void cHwPort_Terminal::set( MTYPE mask, MTYPE value )
{
  out |=  (mask&value);
  out &= ~(mask&value);
  if( tPtr == 0 )
  {
    update();
  }
}


void cHwPort_Terminal::clr( MTYPE mask )
{
  out &= ~mask;
  if( tPtr == 0 )
  {
    update();
  }
}


MTYPE cHwPort_Terminal::get( void )
{
  if( tPtr == 0 )
  {
    update();
  }

  MTYPE ret = latch;
  return(ret);
}


void cHwPort_Terminal::update( void )
{
  BYTE c=0;
  MTYPE tmpLatch = 0;

  latch = latch & lock; 

  
  
  
  while( uart.get(&c) && c != 0 ) 
  {
    switch( escape )
    {
      case 0: 
        switch( c )
        {

          case '1': tmpLatch |= NUM_1; break;
          case '2': tmpLatch |= NUM_2; break;
          case '3': tmpLatch |= NUM_3; break;
          case '4': tmpLatch |= NUM_4; break;
          case '5': tmpLatch |= NUM_5; break;
          case '6': tmpLatch |= NUM_6; break;
          case '7': tmpLatch |= NUM_7; break;
          case '8': tmpLatch |= NUM_8; break;

          case '+': tmpLatch |= PLUS;  break;
          case '-': tmpLatch |= MINUS; break;
          case ' ': tmpLatch |= BLANK; break;
          case '\r':tmpLatch |= ENTER; break;
          case 27  :escape = 1;        break;
          case 224 :escape = 2;        break;
        }
        break;

      case 1: 
        switch( c )
        {
          case '[': escape = 2; break; 
          case 27:  tmpLatch |= last;  
                    escape = 0;break;
          default:  escape = 0; break; 
        }
        break;

      case 2: 
        switch( c )
        {
          case 'A':
          case 72:  last = UP;    break;
          case 'B':
          case 80:  last = DOWN;  break;
          case 'C':
          case 77:  last = RIGHT; break;
          case 'D':
          case 75:  last = LEFT;  break;
          default:  last = 0;     break;
        }
        tmpLatch |= last;
        escape = 0;
        break;
      }
  }

  
  
  
  cSystem::disableInterrupt();
  latch |= tmpLatch & ~lock;
  latch ^= tmpLatch &  lock;
  cSystem::enableInterrupt();

  
  
  
  if( dir ) 
  {
    for( BYTE i = 0; i < 8*sizeof(MTYPE); i++ )
    {
      MTYPE mask = (0x01 << (8*sizeof(MTYPE) - i - 1) );
      if( dir & mask )
      {
        uart.set( (out&mask) ? 'X' : '.' );
      }
      else
      {
        uart.set('-');
      }
    }
    uart.set('\r');
  }
}


#line 62 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RAM_PCF8583.cpp"





 







cHwRAM_PCF8583::cHwRAM_PCF8583( cHwI2Cmaster &i2cIn, BYTE hwAddrIn )

: cHwMemory(240, 0xFF) , i2c(i2cIn, baseAdr | ( (hwAddrIn&maskAdr) << 1 ))

{
}


void cHwRAM_PCF8583::writeByte( DWORD addr, BYTE data )
{
  i2c.write( (BYTE)(addr+16), data ); 
}


BYTE cHwRAM_PCF8583::readByte( DWORD addr )
{
  return( i2c.read( (BYTE)(addr+16) ) ); 
}


#line 63 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RS485_MAX48x.cpp"





 










#line 64 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/RTC_PCF8583.cpp"





 







cHwRTC_PCF8583::cHwRTC_PCF8583( cHwI2Cmaster &i2cIn, BYTE hwAddrIn )

: i2c(i2cIn,  baseAdr | ((hwAddrIn&maskAdr)<<1))

{
}


void cHwRTC_PCF8583::set( const cHwRTC::Properties &clock )
{
  
  i2c.write(  (BYTE)0x00, 
                    (0x00<<7)    
                   |(0x00<<6)    
                   |(0x00<<4)    
                   |(0x00<<3)    
                   |(0x00<<2)    
                   |(0x00<<1)    
                   |(0x00<<0));  

  i2c.write(  (BYTE)0x02, 
                     Dual_2_BCD( clock.second) );

  i2c.write(  (BYTE)0x03, 
                     Dual_2_BCD( clock.minute) );

  i2c.write(  (BYTE)0x04, 
                     Dual_2_BCD( clock.hour  ) |(0x00<<6)   
                                               |(0x00<<7) );

  i2c.write(  (BYTE)0x05, 
                     Dual_2_BCD( clock.day   ) |((clock.year%4)<<6) );

  i2c.write(  (BYTE)0x06, 
                     Dual_2_BCD( clock.month ) );
}


BYTE cHwRTC_PCF8583::get( cHwRTC::Properties &clock )
{
  BYTE sec;
  
  clock.second = BCD_2_Dual( i2c.read(  (BYTE)0x02 )        );
  clock.minute = BCD_2_Dual( i2c.read(  (BYTE)0x03 )        );
  clock.hour   = BCD_2_Dual( i2c.read(  (BYTE)0x04 ) & 0x3F );
  clock.year   = BCD_2_Dual( i2c.read(  (BYTE)0x05 ) >> 6   );
  clock.month  = BCD_2_Dual( i2c.read(  (BYTE)0x06 ) & 0x1F );
  clock.day    = BCD_2_Dual( i2c.read(  (BYTE)0x05 ) & 0x3F );

  
  sec          = BCD_2_Dual( i2c.read(  (BYTE)0x02 )        );
  
  return( (clock.second <= sec) ? true : false );
}


inline BYTE cHwRTC_PCF8583::BCD_2_Dual( BYTE bcd )
{
  return( 10*((bcd>>4)&0x0F) + (bcd&0x0F) );
}


inline BYTE cHwRTC_PCF8583::Dual_2_BCD( BYTE dual )
{
  return( ((dual/10)<<4) | (dual%10) );
}


#line 65 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_ADS7846.cpp"





 


#line 10 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_ADS7846.cpp"







cHwTouch_ADS7846::cHwTouch_ADS7846( cHwSPImaster::Device &spiIn, 
                                    WORD                  width,
                                    WORD                  height )

: cHwTouch( width, height),
  spi( spiIn )
{
}


void cHwTouch_ADS7846::update( void )
{
  xPos = (DWORD)width  * (0x0FFF - readData(1)) / 0x1000;
  yPos = (DWORD)height * (         readData(5)) / 0x1000;

  isTouchedFlag = ( readData(3) > 0x50 ) ? true : false;  
}


int cHwTouch_ADS7846::readData( BYTE ch )
{
  BYTE data[3] = {0,0,0};
  int  res;

  data[0] =   ( 1<<7)  
             |(ch<<4)  
             |( 0<<3)  
             |( 0<<2)  
             |( 3<<0); 

  spi.transceive( data, 3 );

  res = ( (((WORD)data[1]<<8) | data[2]) >> 3 ) & 0xFFF;
 
  return( res );
}


#line 66 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Touch_STMPE811i2c.cpp"










 







cHwTouch_STMPE811i2c::cHwTouch_STMPE811i2c( cHwI2Cmaster &i2cIn, 
                                            BYTE          addrIn, 
                                            WORD          widthIn, 
                                            WORD          heightIn )

: cHwTouch(widthIn, heightIn ), 
  i2c( i2cIn, (addrIn ? 0x88 : 0x82) )
{
  i2c.write(  (BYTE)0x03, 
                           (0<<0)   
                          |(1<<1)); 
  
  cSystem::delayMilliSec( 10 );
  
  i2c.write(  (BYTE)0x04, 
                           (0<<0)   
                          |(0<<1)   
                          |(1<<2)   
                          |(1<<3)); 

  i2c.write(  (BYTE)0x0A, 
                            (0<<0)   
                           |(0<<1)   
                           |(0<<2)   
                           |(0<<3)   
                           |(0<<4)   
                           |(0<<5)   
                           |(0<<6)   
                           |(0<<7)); 
  
  i2c.write(  (BYTE)0x20, 
                            (1<<0)   
                           |(0<<1)   
                           |(1<<3)   
                           |(6<<4)); 
  
  cSystem::delayMilliSec( 2 );

  i2c.write(  (BYTE)0x21, 
                           (1<<0)); 
  
  i2c.write(  (BYTE)0x17, 
                          (0<<0)); 

  i2c.write(  (BYTE)0x41, 
                           (0<<0)   
                          |(0<<3)   
                          |(0<<6)); 
                          
  i2c.write(  (BYTE)0x4A, 
                            (1<<0)); 
    
  i2c.write(  (BYTE)0x4B, 
                           (1<<0)); 
                           
  i2c.write(  (BYTE)0x4B, 
                           (0<<0)); 
                           
  i2c.write(  (BYTE)0x56, 
                           (7<<0)); 
  
  i2c.write(  (BYTE)0x58, 
                            (1<<0)); 
  
  i2c.write(  (BYTE)0x40, 
                           (1<<0)   
                          |(0<<1)   
                          |(0<<4)); 
  
  i2c.write(  (BYTE)0x0B, 
                            (1<<0)   
                           |(1<<1)   
                           |(1<<2)   
                           |(1<<3)   
                           |(1<<4)   
                           |(1<<5)   
                           |(1<<6)   
                           |(1<<7)); 
               
  i2c.write(  (BYTE)0x09, 
                            (1<<0)   
                           |(0<<1)   
                           |(0<<2)); 
}


void cHwTouch_STMPE811i2c::update( void )
{
  if( i2c.read(  (BYTE)0x0B ) ) 
  {
    BYTE dat[5];

    i2c.read ( (BYTE)0x4D, dat, 5 );
    i2c.write( (BYTE)0x4B, 0x01 );   
    i2c.write( (BYTE)0x4B, 0x00 );
                           
    WORD x = (WORD)256*dat[0] + dat[1];
    WORD y = (WORD)256*dat[2] + dat[3];
    BYTE z = dat[4];
    
    if( !i2c.isError() )
    {
      if( z > 10 )
      {
        if( 10 < x && x <= 0xFF0 && 10 < y && y <= 0xFF0 ) 
        {          
          xPos = RANGE( (int)(         width  * y/0x1000), 0, (int)width  - 1 );
          yPos = RANGE( (int)(height - height * x/0x1000), 0, (int)height - 1 );  
        }
        isTouchedFlag = true;
      }
      else
      {
        isTouchedFlag = false;
      } 
    }
  }
}


#line 67 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/UART_IP.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/UART_IP.cpp"









#line 68 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Mag_LSM303.cpp"





 







cHwSensMag_LSM303::cHwSensMag_LSM303( cHwI2Cmaster &i2cIn )

: i2c( i2cIn, hwAddr )

{
  
  i2c.write(  (BYTE)0x00,  (1<<7)  
                                 |(6<<2));

  
  i2c.write(  (BYTE)0x01, (0<<5)); 

  
  i2c.write(  (BYTE)0x02, (0<<0)); 

}


inline WORD cHwSensMag_LSM303::readWord( BYTE addr )
{
  WORD data;
  
  data  = ((WORD)i2c.read(  (BYTE)(addr  ) )) << 8;
  data |=        i2c.read(  (BYTE)(addr+1) );
  
  return( data );
}


inline WORD cHwSensMag_LSM303::getX( void )
{
  return( readWord( 0x03 ) );
}


inline WORD cHwSensMag_LSM303::getY( void )
{
  return( readWord( 0x07 ) );
}


inline WORD cHwSensMag_LSM303::getZ( void )
{
  return( readWord( 0x05 ) );
}


#line 73 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Acc_LSM303.cpp"





 







cHwSensAcc_LSM303::cHwSensAcc_LSM303( cHwI2Cmaster &i2cIn )

: i2c( i2cIn, hwAddr )

{
  
  i2c.write(  (BYTE)0x20,  (0x5<<4)  
                           |(  0<<3)  
                           |(  1<<2)  
                           |(  1<<1)  
                           |(  1<<0));

  
  i2c.write(  (BYTE)0x21,  (0<<6)  
                           |(0<<4)  
                           |(0<<3)  
                           |(0<<2)  
                           |(0<<1)  
                           |(0<<0));
                           
  
  i2c.write(  (BYTE)0x22,  0); 

  
  i2c.write(  (BYTE)0x23,  (1<<7)  
                           |(0<<6)  
                           |(0<<4)  
                           |(1<<3)  
                           |(0<<0));

  
  i2c.write(  (BYTE)0x24,  (0<<7)  
                           |(0<<6)  
                           |(0<<3)  
                           |(0<<2)  
                           |(0<<1)  
                           |(0<<0));

  
  i2c.write(  (BYTE)0x25,  0 );    
                                    

}


inline WORD cHwSensAcc_LSM303::readWord( BYTE addr )
{
  WORD data;
  
  data  =        i2c.read(  (BYTE)(addr  ) );
  data |= ((WORD)i2c.read(  (BYTE)(addr+1) )) << 8;
  
  return( data );
}


inline WORD cHwSensAcc_LSM303::getX( void )
{
  return( readWord( 0x28 ) );
}


inline WORD cHwSensAcc_LSM303::getY( void )
{
  return( readWord( 0x2A ) );
}


inline WORD cHwSensAcc_LSM303::getZ( void )
{
  return( readWord( 0x2C ) );
}


#line 74 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Hardware/Peripheral/Sensor/Gyro_L3GD20.cpp"





 







cHwSensGyro_L3GD20::cHwSensGyro_L3GD20( cHwI2Cmaster &i2cIn,
                                BYTE          hwAddrIn )

: i2c(i2cIn, baseAdr | ( (hwAddrIn&0x01) << 1 ) )

{
    i2c.write((BYTE)0x20,  (3<<4)
                                 |(0xf<<0));

    i2c.write((BYTE)0x21,  (1<<4)
                                 |(3<<0));

    i2c.write((BYTE)0x23,  (3<<4));

}


inline WORD cHwSensGyro_L3GD20::readWord( BYTE addr )
{
  WORD data;
  
  data  =        i2c.read( (BYTE)(addr  )   );
  data |= ((WORD)i2c.read( (BYTE)(addr+1) )) << 8;
  
  return( data );
}


inline WORD cHwSensGyro_L3GD20::getX( void )
{
  return( readWord( 0x28 ) );
}


inline WORD cHwSensGyro_L3GD20::getY( void )
{
  return( readWord( 0x2A ) );
}


inline WORD cHwSensGyro_L3GD20::getZ( void )
{
  return( readWord( 0x2C ) );
}


#line 75 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.cpp"


#line 19 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"









 




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalog.cpp"







 







cDevAnalog::cDevAnalog( BYTE  channelIn,
                        float gainIn,
                        float offsetIn )
{
  channel = channelIn;
  gain    = gainIn;
  offs    = offsetIn;
}


#line 16 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogIn.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogIn.cpp"







cDevAnalogIn::cDevAnalogIn( BYTE  channel,
                            float max,
                            float min )

: cDevAnalog( channel,
              (max-min)/(float)0xFFFF,
               min )

{
}


inline float cDevAnalogIn::get( void )
{
  return( gain*getRaw() + offs );
}


inline cDevAnalogIn::operator float( void )
{
  return( get() );
}


void cDevAnalogIn::calibrate( float x1, 
                              float y1,
                              float x2,
                              float y2
                            )
{
  if( x1 != x2 ) 
  {
    gain = (y2-y1)/(x2-x1);
    offs = y1 - gain*x1;
  }
}


#line 17 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogInADC.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogInADC.cpp"







cDevAnalogInADC::cDevAnalogInADC( cHwADC &adcIn,
                                  BYTE    channel,
                                  float   max,
                                  float   min )

: cDevAnalogIn( channel, max, min ),
  adc         ( adcIn )

{
  adc.enable( channel );
}


WORD cDevAnalogInADC::getRaw( void )
{
  return( adc.get( channel ) );
}


#line 18 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOut.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOut.cpp"







cDevAnalogOut::cDevAnalogOut( BYTE  channel,
                              float max,
                              float min )

: cDevAnalog( channel,
              (float)0xFFFF*( (max != min) ? 1.0F/(max-min) : 1.0F ),
              min )

{
}


void cDevAnalogOut::set( float value )
{
  setRaw( (WORD)RANGE( gain*(value - offs),
                      (float)0,
                      (float)0xFFFF) );
}


inline float cDevAnalogOut::operator=( float value )
{
  set( value );
  return( value );
}


#line 19 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutDAC.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutDAC.cpp"







cDevAnalogOutDAC::cDevAnalogOutDAC( cHwDAC &dacIn,
                                    BYTE    channel,
                                    float   max,
                                    float   min )

:cDevAnalogOut( channel, max, min ),
 dac          ( dacIn )

{
  dac.enable( channel );
}


void cDevAnalogOutDAC::setRaw( WORD value )
{
  dac.set( value, channel );
}


#line 20 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutPWM.cpp"








 


#line 13 "..\\EmbSysLib\\Lib\\Src\\Device/Analog/devAnalogOutPWM.cpp"







cDevAnalogOutPWM::cDevAnalogOutPWM( cHwTimer       &timerIn,
                                    cHwTimer::Mode  mode,
                                    BYTE            channel,
                                    float           max,
                                    float           min )

: cDevAnalogOut( channel, max, min ),
  timer        ( timerIn )

{
  timer.enablePWM( channel, mode );
}


void cDevAnalogOutPWM::setRaw( WORD value )
{
  timer.setPWM( value, channel );
}







cDevAnalogOutPWMemul::cDevAnalogOutPWMemul( cHwTimer    &timerIn,
                                            cDevDigital &portIn,
                                            BYTE         resIn,
                                            float        maxIn,
                                            float        minIn )
: cDevAnalogOut( 0, maxIn, minIn ),
  timer        ( timerIn         ),
  port         ( portIn          )

{
  shift = 16 - resIn;
  max   = (WORD)(0x0001L << resIn) - 1;
  t     = 0;
  timer.add(this);
}


void cDevAnalogOutPWMemul::setRaw( WORD value )
{
  limitBuf << (WORD)(value>>shift);
}


void cDevAnalogOutPWMemul::update( void )
{
  if( t >= max )
  {
    t = 0;
    port.set();
    limitBuf >> limit;
  }
  if( t == limit )
  {
    port.clr();
  }
  t++;
}


#line 21 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Digital/devDigital.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/Digital/devDigital.cpp"







cDevDigital::cDevDigital( cHwPort &port,
                          BYTE     pinId,
                          Mode     mode,
                          bool     def  )
: pin( port, pinId )
{
  valueIn     = 0;
  valueInLast = 0;
  valueOut    = 0;
  pinDefault  = def;

  pin.set( def );
  pin.setMode( (cHwPort::Mode)mode );
}


void cDevDigital::setMode( Mode mode )
{
  pin.setMode( (cHwPort::Mode)mode );
}


void cDevDigital::set( bool value )
{
  valueOut = value;
  pin.set( value ^ pinDefault );
}


bool cDevDigital::get( void )
{
  return( pin.get() != pinDefault );
}


#line 26 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Digital/devDigitalIndicator.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/Digital/devDigitalIndicator.cpp"







cDevDigitalIndicator::cDevDigitalIndicator( cDevDigital &devDigitalIn,
                                            cHwTimer    &timerIn )
: devDigital( devDigitalIn ),
  timer     ( timerIn      )
{
  timeout   = 0;
  cycleTime = timer.getCycleTime();
  clr();
  timer.add(this);
}


void cDevDigitalIndicator::update( void )
{
  if( timeout > 0 )
  {
    timeout--;
    if( timeout == 0 )
    {
      clr();
    }
  }
}


#line 27 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplay.cpp"







 







cDevDisplay::cDevDisplay( void )
{
}


#line 32 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayChar.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayChar.cpp"
#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"
 
 
 





 











      namespace std {

          extern "C" {











 

 
 
  typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 


         }   
      }   


#line 119 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"





      using ::std::va_list;





 

#line 13 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayChar.cpp"







cDevDisplayChar::cDevDisplayChar( cHwDisplay &displayIn )

: display( displayIn )

{
  display.clear();
}


void cDevDisplayChar::clear(void)
{
  display.clear();
}


void cDevDisplayChar::printf( BYTE        line,
                              BYTE        column,
                              BYTE        minLen,
                              const char *format,
                              ... )
{
  BYTE i;

  
  char str[32]; 

  va_list argzeiger;
  __va_start(argzeiger, format);
  vsnprintf( str, 31, format, argzeiger );
  __va_end(argzeiger);

  display.gotoTextPos( line, column );

  
  for( i = 0; str[i] != 0 && i<30; i++ )
  {
    display.putChar( str[i] );
  }

  
  for(   ; i < minLen; i++)
  {
    display.putChar( ' ' );
  }
}


void cDevDisplayChar::printf( BYTE        line,
                              BYTE        column,
                              const char *str )
{
  BYTE i;

  display.gotoTextPos( line, column );

  
  for( i = 0; str[i] != 0; i++ )
  {
    display.putChar( str[i] );
  }
}


#line 33 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayGraphic.cpp"





 


#line 10 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayGraphic.cpp"
#line 11 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayGraphic.cpp"
#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"




 





 












 








 






#line 48 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"

#line 62 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"

   




 















 
#line 93 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"











 


      extern "C" {


extern __softfp unsigned __ARM_dcmp4(double  , double  );
extern __softfp unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __softfp int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __softfp int __ARM_fpclassify(double  );
     
     

inline __declspec(__nothrow) __softfp int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
inline __declspec(__nothrow) __softfp int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

inline __declspec(__nothrow) __softfp int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
inline __declspec(__nothrow) __softfp int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

inline __declspec(__nothrow) __softfp int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
inline __declspec(__nothrow) __softfp int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

inline __declspec(__nothrow) __softfp int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
inline __declspec(__nothrow) __softfp int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

inline __declspec(__nothrow) __softfp int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
inline __declspec(__nothrow) __softfp int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

inline __declspec(__nothrow) __softfp int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
inline __declspec(__nothrow) __softfp int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     


      }  






      namespace std {

        extern "C" {






   
  typedef float float_t;
  typedef double double_t;







extern const int math_errhandling;



extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __pure double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __pure double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    inline double _sqrt(double __x) { return sqrt(__x); }


    inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __pure double ceil(double  );
    
    
extern __declspec(__nothrow) __pure double fabs(double  );
    
    

extern __declspec(__nothrow) __pure double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
inline __declspec(__nothrow) __pure double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
inline __declspec(__nothrow) __pure float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 445 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __pure double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __pure float _fabsf(float);  
inline __declspec(__nothrow) __pure float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __pure float ceilf(float  );
extern __declspec(__nothrow) __pure float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );



#line 825 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"






  extern "C++" {
    inline float abs(float __x)   { return fabsf(__x); }
    inline float acos(float __x)  { return acosf(__x); }
    inline float asin(float __x)  { return asinf(__x); }
    inline float atan(float __x)  { return atanf(__x); }
    inline float atan2(float __y, float __x)    { return atan2f(__y,__x); }
    inline float ceil(float __x)  { return ceilf(__x); }
    inline float cos(float __x)   { return cosf(__x); }
    inline float cosh(float __x)  { return coshf(__x); }
    inline float exp(float __x)   { return expf(__x); }
    inline float fabs(float __x)  { return fabsf(__x); }
    inline float floor(float __x) { return floorf(__x); }
    inline float fmod(float __x, float __y)     { return fmodf(__x, __y); }
    float frexp(float __x, int* __exp) __attribute__((__nonnull__(2)));
    inline float frexp(float __x, int* __exp)   { return frexpf(__x, __exp); }
    inline float ldexp(float __x, int __exp)    { return ldexpf(__x, __exp);}
    inline float log(float __x)   { return logf(__x); }
    inline float log10(float __x) { return log10f(__x); }
    float modf(float __x, float* __iptr) __attribute__((__nonnull__(2)));
    inline float modf(float __x, float* __iptr) { return modff(__x, __iptr); }
    inline float pow(float __x, float __y)      { return powf(__x,__y); }
    inline float pow(float __x, int __y)     { return powf(__x, (float)__y); }
    inline float sin(float __x)   { return sinf(__x); }
    inline float sinh(float __x)  { return sinhf(__x); }
    inline float sqrt(float __x)  { return sqrtf(__x); }
    inline float _sqrt(float __x) { return _sqrtf(__x); }
    inline float tan(float __x)   { return tanf(__x); }
    inline float tanh(float __x)  { return tanhf(__x); }

    inline double abs(double __x) { return fabs(__x); }
    inline double pow(double __x, int __y)
                { return pow(__x, (double) __y); }

    inline long double abs(long double __x)
                { return (long double)fabsl(__x); }
    inline long double acos(long double __x)
                { return (long double)acosl(__x); }
    inline long double asin(long double __x)
                { return (long double)asinl(__x); }
    inline long double atan(long double __x)
                { return (long double)atanl(__x); }
    inline long double atan2(long double __y, long double __x)
                { return (long double)atan2l(__y, __x); }
    inline long double ceil(long double __x)
                { return (long double)ceill( __x); }
    inline long double cos(long double __x)
                { return (long double)cosl(__x); }
    inline long double cosh(long double __x)
                { return (long double)coshl(__x); }
    inline long double exp(long double __x)
                { return (long double)expl(__x); }
    inline long double fabs(long double __x)
                { return (long double)fabsl(__x); }
    inline long double floor(long double __x)
                { return (long double)floorl(__x); }
    inline long double fmod(long double __x, long double __y)
                { return (long double)fmodl(__x, __y); }
    long double frexp(long double __x, int* __p) __attribute__((__nonnull__(2)));
    inline long double frexp(long double __x, int* __p)
                { return (long double)frexpl(__x, __p); }
    inline long double ldexp(long double __x, int __exp)
                { return (long double)ldexpl(__x, __exp); }
    inline long double log(long double __x)
                { return (long double)logl(__x); }
    inline long double log10(long double __x)
                { return (long double)log10l(__x); }
    long double modf(long double __x, long double* __p) __attribute__((__nonnull__(2)));
    inline long double modf(long double __x, long double* __p)
                { return (long double)modfl(__x, __p); }
    inline long double pow(long double __x, long double __y)
                { return (long double)powl(__x, __y); }
    inline long double pow(long double __x, int __y)
                { return (long double)powl(__x, __y); }
    inline long double sin(long double __x)
                { return (long double)sinl(__x); }
    inline long double sinh(long double __x)
                { return (long double)sinhl(__x); }
    inline long double sqrt(long double __x)
                { return (long double)sqrtl(__x); }
    inline long double _sqrt(long double __x)
                { return (long double)_sqrt((double) __x); }
    inline long double tan(long double __x)
                { return (long double)tanl(__x); }
    inline long double tanh(long double __x)
                { return (long double)tanhl(__x); }


    inline float acosh(float __x) { return acoshf(__x); }
    inline float asinh(float __x) { return asinhf(__x); }
    inline float atanh(float __x) { return atanhf(__x); }
    inline float cbrt(float __x) { return cbrtf(__x); }
    inline float erf(float __x) { return erff(__x); }
    inline float erfc(float __x) { return erfcf(__x); }
    inline float expm1(float __x) { return expm1f(__x); }
    inline float log1p(float __x) { return log1pf(__x); }
    inline float hypot(float __x, float __y) { return hypotf(__x, __y); }
    inline float lgamma(float __x) { return lgammaf(__x); }
    inline float remainder(float __x, float __y) { return remainderf(__x, __y); }
    inline float rint(float __x) { return rintf(__x); }


#line 977 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"

  }



        }   
      }   








    using ::std::__use_accurate_range_reduction;
    using ::std::abs;
    using ::std::acos;
    using ::std::asin;
    using ::std::atan2;
    using ::std::atan;
    using ::std::ceil;
    using ::std::cos;
    using ::std::cosh;
    using ::std::exp;
    using ::std::fabs;
    using ::std::floor;
    using ::std::fmod;
    using ::std::frexp;
    using ::std::ldexp;
    using ::std::log10;
    using ::std::log;
    using ::std::modf;
    using ::std::pow;
    using ::std::sin;
    using ::std::sinh;
    using ::std::sqrt;
    using ::std::_sqrt;
    using ::std::_sqrtf;
    using ::std::tan;
    using ::std::tanh;
    using ::std::_fabsf;
     
    using ::std::acosf;
    using ::std::acosl;
    using ::std::asinf;
    using ::std::asinl;
    using ::std::atan2f;
    using ::std::atan2l;
    using ::std::atanf;
    using ::std::atanl;
    using ::std::ceilf;
    using ::std::ceill;
    using ::std::cosf;
    using ::std::coshf;
    using ::std::coshl;
    using ::std::cosl;
    using ::std::expf;
    using ::std::expl;
    using ::std::fabsf;
    using ::std::fabsl;
    using ::std::floorf;
    using ::std::floorl;
    using ::std::fmodf;
    using ::std::fmodl;
    using ::std::frexpf;
    using ::std::frexpl;
    using ::std::ldexpf;
    using ::std::ldexpl;
    using ::std::log10f;
    using ::std::log10l;
    using ::std::logf;
    using ::std::logl;
    using ::std::modff;
    using ::std::modfl;
    using ::std::powf;
    using ::std::powl;
    using ::std::sinf;
    using ::std::sinhf;
    using ::std::sinhl;
    using ::std::sinl;
    using ::std::sqrtf;
    using ::std::sqrtl;
    using ::std::tanf;
    using ::std::tanhf;
    using ::std::tanhl;
    using ::std::tanl;

       
      using ::std::acosh;
      using ::std::asinh;
      using ::std::atanh;
      using ::std::cbrt;
      using ::std::copysign;
      using ::std::copysignf;
      using ::std::erf;
      using ::std::erfc;
      using ::std::expm1;
      using ::std::hypot;
      using ::std::ilogb;
      using ::std::ilogbf;
      using ::std::ilogbl;
      using ::std::lgamma;
      using ::std::log1p;
      using ::std::logb;
      using ::std::logbf;
      using ::std::logbl;
      using ::std::nextafter;
      using ::std::nextafterf;
      using ::std::nextafterl;
      using ::std::nexttoward;
      using ::std::nexttowardf;
      using ::std::nexttowardl;
      using ::std::remainder;
      using ::std::rint;
      using ::std::scalbln;
      using ::std::scalblnf;
      using ::std::scalblnl;
      using ::std::scalbn;
      using ::std::scalbnf;
      using ::std::scalbnl;
      using ::std::math_errhandling;
      using ::std::acoshf;
      using ::std::acoshl;
      using ::std::asinhf;
      using ::std::asinhl;
      using ::std::atanhf;
      using ::std::atanhl;
      using ::std::copysignl;
      using ::std::cbrtf;
      using ::std::cbrtl;
      using ::std::erff;
      using ::std::erfl;
      using ::std::erfcf;
      using ::std::erfcl;
      using ::std::expm1f;
      using ::std::expm1l;
      using ::std::log1pf;
      using ::std::log1pl;
      using ::std::hypotf;
      using ::std::hypotl;
      using ::std::lgammaf;
      using ::std::lgammal;
      using ::std::remainderf;
      using ::std::remainderl;
      using ::std::rintf;
      using ::std::rintl;


       
      using ::std::float_t;
      using ::std::double_t;
#line 1182 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"



 

#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/Display/devDisplayGraphic.cpp"







cDevDisplayGraphic::cDevDisplayGraphic( cHwDisplayGraphic &displayIn )

: display( displayIn )

{
  clear();
}


void cDevDisplayGraphic::clear( void )
{
  
  display.clear();
}


void cDevDisplayGraphic::printf( BYTE        line,
                                 BYTE        column,
                                 BYTE        minLen,
                                 const char *format,
                                 ... )
{
  BYTE i;

  
  char str[31]; 

  va_list argzeiger;
  __va_start(argzeiger, format);
  vsprintf( str, format, argzeiger );
  __va_end(argzeiger);

  display.gotoTextPos( line, column );

  
  for( i = 0; str[i] != 0; i++ )
  {
    display.putChar( str[i] );
  }

  
  for(   ; i < minLen; i++)
  {
    display.putChar( ' ' );
  }
}


void cDevDisplayGraphic::setFont( cHwDisplayFont font,
                                  BYTE           zoom )
{
  display.setFont( font, zoom );
};


void cDevDisplayGraphic::setZoom( BYTE zoom )
{
  display.setZoom( zoom );
};


void cDevDisplayGraphic::setBackColor( WORD color )
{
  display.setBackColor( color );
}


void cDevDisplayGraphic::setTextColor( WORD color )
{
  display.setTextColor( color );
}


void cDevDisplayGraphic::drawText( WORD        x,
                                   WORD        y,
                                   BYTE        minLen,
                                   const char *format,
                                   ... )
{
  BYTE i;

  
  char str[31]; 

  va_list argzeiger;
  __va_start(argzeiger, format);
  vsprintf( str, format, argzeiger );
  __va_end(argzeiger);

  display.gotoPixelPos( x, y );

  
  for( i = 0; str[i] != 0; i++ )
  {
    display.putChar( str[i] );
  }

  
  for(  ; i < minLen; i++ )
  {
    display.putChar( ' ' );
  }
}


void cDevDisplayGraphic::drawText( WORD        x,
                                   WORD        y,
                                   const char *str )
{
  BYTE i;

  display.gotoPixelPos( x, y );

  
  for( i = 0; str[i] != 0; i++ )
  {
    display.putChar( str[i] );
  }
}


void cDevDisplayGraphic::drawPixel( WORD x,
                                    WORD y,
                                    WORD color )
{
   display.setPaintColor( color );
   display.putPixel( x, y );
}


void cDevDisplayGraphic::drawRectangle( WORD x,
                                        WORD y,
                                        WORD w,
                                        WORD h,
                                        WORD color )
{
   display.setPaintColor( color );
   display.putRectangle( x, y, w, h );
}


void cDevDisplayGraphic::drawFrame( WORD x,
                                    WORD y,
                                    WORD w,
                                    WORD h,
                                    WORD th,
                                    WORD color )
{
  
  drawRectangle( x, y     , w, th, color );
  drawRectangle( x, y+h-th, w, th, color );

  
  drawRectangle( x,      y, th, h, color );
  drawRectangle( x+w-th, y, th, h, color );
}


void cDevDisplayGraphic::drawCircle( WORD x0,
                                     WORD y0,
                                     WORD r,
                                     WORD color )
{
  for( WORD x = 0; x <= r; x++ )
  {
    int h = (int)sqrt( (float)r*r-(float)x*x );
    drawRectangle( x0+x, y0-h, 1, 2*h, color );
    drawRectangle( x0-x, y0-h, 1, 2*h, color );
  }
}


void cDevDisplayGraphic::drawLine( WORD x0,
                                   WORD y0,
                                   WORD x1,
                                   WORD y1,
                                   WORD th,
                                   WORD color )
{
  long t;
  int  x;
  int  y;
  int  dx = (int)x1-x0;
  int  dy = (int)y1-y0;

  if( dy == 0 ) 
  {
    x0 = (x0 < x1) ? x0 : x1;
    y0 = (y0 < y1) ? y0 : y1;
    drawRectangle( x0, y0-th/2, abs(dx), th, color );
  }
  else if( dx == 0 ) 
  {
    x0 = (x0 < x1) ? x0 : x1;
    y0 = (y0 < y1) ? y0 : y1;
    drawRectangle(x0-th/2, y0, th, abs(dy), color );
  }
  else if( abs(dx) <= abs(dy) )
  {
    for( t = abs(dy); t >= 0; t-- )  
    {
      x = x0 + t*dx/abs(dy);         
      y = y0 + ( (dy>0) ? +t : -t ); 
      for( int i = th; i >= 0; i-- )
      {
        drawPixel( x+i, y, color );
      }
    }
  }
  else
  {
    for( t = abs(dx); t >= 0; t-- )  
    {
      x = x0 + ( (dx>0) ? +t : -t ); 
      y = y0 + t*dy/abs(dx);         
      for( int i = th; i >= 0; i-- )
      {
        drawPixel( x, y+i, color );
      }
    }
  }
}


void cDevDisplayGraphic::drawBitmap( WORD        x,
                                     WORD        y,
                                     WORD        w,
                                     WORD        h,
                                     const WORD *bitmap )
{
  display.putBitmap( x, y, w, h, bitmap );
}


cHwDisplayFont cDevDisplayGraphic::getDefaultFont( void )
{
  return( display.getDefaultFont() );
}


#line 34 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Memory/devMemory.cpp"







 







cDevMemory::cDevMemory( cHwMemory &memIn,
                        WORD       addrIn )

: mem( memIn )

{
  addr   = addrIn;
  pos    = 1; 
}


WORD cDevMemory::allocate( WORD size )
{
  WORD ret = pos;

  pos += size;  
  return( ret );
}


void cDevMemory::write( BYTE *data,
                        WORD  size,
                        WORD  offs )
{
  mem.unlock();
  for( WORD i = 0; i < size; i++ )
  {
    mem.write( addr+offs+i, data[i] );
  }
  mem.lock();
}


void cDevMemory::read( BYTE *data,
                       WORD  size,
                       WORD  offs )
{
  for( WORD i = 0; i < size; i++ )
  {
    data[i] = mem.read( addr+offs+i );
  }
}


void cDevMemory::clear( void )
{
  mem.unlock();
  mem.clear();
  mem.lock();
}


void cDevMemory::setValid( void )
{
  mem.unlock();
  mem.write( addr, 0x55 );
  mem.unlock();
}


BYTE cDevMemory::isValid( void )
{
  return( ( mem.read( addr ) == 0x55 ) ? true : false );
}


#line 39 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO.cpp"
#line 13 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO.cpp"
#line 14 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO.cpp"


#line 17 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO.cpp"







cDevTextIO::cDevTextIO( BYTE        inBufSizeIn,
                        BYTE        outBufSizeIn,
                        const char *eosIn,
                        const char *keyIn )
{
  inBufSize  = inBufSizeIn;
  outBufSize = outBufSizeIn;
  strIn      = new char[ inBufSize + 1];
  strOut     = new char[outBufSize + 1];
  idx        = 0;
  eos        = eosIn;
  key        = keyIn;
  escape     = 0;
  last       = 0;
}


char* cDevTextIO::getString( void )
{
	BYTE c        = 0;
  BYTE complete = 0;

  while( get( &c ) && !complete )
  {
    switch( escape )
    {
      case 0: 
        switch( c )
        {
          case 27  : escape = 1;          break; 
          case 224 : escape = 2;          break; 
          default  : last = c;
                     strIn[idx++] = last; break; 
        }
        break;

      case 1: 
        switch( c )
        {
          case '[': escape = 2;          break; 
          case 27:  strIn[idx++] = last;        
                    escape = 0;          break;
          default:  escape = 0;          break; 
        }
        break;

      case 2: 
        last = c | 0x80;
        strIn[idx++] = last;
        escape = 0;
        break;
    }

    
    if(    (idx >= inBufSize-2)           
                                          
        || (   (idx == 1 )                
            && (   (last&0x80)            
                || strchr( key, last )) ) 
                                          
        || (strchr( eos, last ))          
      )
    {
      complete   = 1;
      strIn[idx] = 0;
      idx        = 0;
      return( strIn );
    }
  }
  return( 0 );
}


void cDevTextIO::printf( const char *format, ... )
{
  va_list argzeiger;

  __va_start(argzeiger, format);
  vsnprintf( strOut, outBufSize, format, argzeiger );
  __va_end(argzeiger);

  
  set( (BYTE*)strOut, strlen(strOut) );
}


#line 44 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO_UART.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Device/TextIO/devTextIO_UART.cpp"







cDevTextIO_UART::cDevTextIO_UART( cHwUART    &uartIn,
                                  BYTE        inBufSizeIn,
                                  BYTE        outBufSizeIn,
                                  const char *eosIn,
                                  const char *keyIn)

: cDevTextIO( inBufSizeIn,
              outBufSizeIn,
              eosIn,
              keyIn ),
                          
  uart      ( uartIn )

{
}


inline void cDevTextIO_UART::set( BYTE *str, BYTE size )
{
  uart.set( str, size );
}
    

inline bool cDevTextIO_UART::get( BYTE *c )
{
  return( uart.get( c ) );
}    


#line 45 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoder.cpp"





 







cDevControlEncoder::cDevControlEncoder( cDevDigital *btnCtrlIn,
                          cHwTimer    *timerPtr )

: fifo( 20 ),
  btnCtrl( btnCtrlIn )

{
  if(timerPtr)
  {
    timerPtr->add(this);
  }
}


cDevControlEncoder::tEvent cDevControlEncoder::get( void )
{
  if( fifo.isEmpty() )
  {
    return( NONE );
  }
  else
  {
    tEvent event = NONE;
    fifo >> event;
    return( event );
  }
}


void cDevControlEncoder::update( void )
{
  if( !fifo.isFull() )
  {
    switch( getIncrement() )
    {
      case LEFT:  fifo << LEFT;    break;
      case RIGHT: fifo << RIGHT;   break;
      default:                     break;
    }
  }

  if( !fifo.isFull() )
  {
    switch( getCtrl() )
    {
      case CTRL_DWN:  fifo << CTRL_DWN;  break;
      case CTRL_UP:   fifo << CTRL_UP;   break;
      default:                           break;
    }
  }
}


cDevControlEncoder::tEvent cDevControlEncoder::getCtrl( void )
{
  if( btnCtrl )
  {
    btnCtrl->update();

    if( btnCtrl->isActivated() )
    {
      return( CTRL_DWN );
    }
    else if( btnCtrl->isReleased() )
    {
      return( CTRL_UP );
    }
  }
  return( NONE );
}


#line 50 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoderJoystick.cpp"





 







cDevControlEncoderJoystick::cDevControlEncoderJoystick( cDevDigital *btnLeftIn,
                                          cDevDigital *btnRightIn,
                                          cDevDigital *btnCtrlIn,
                                          cHwTimer    *timerPtr,
                                          WORD         repeatTime )

: cDevControlEncoder( btnCtrlIn, timerPtr ),
  btnLeft    ( btnLeftIn ),
  btnRight   ( btnRightIn )
{
  if( timerPtr && timerPtr->getCycleTime() )
  {
    timerStart = 1000UL*repeatTime/timerPtr->getCycleTime();
    
  }
  else
  {
    timerStart = 0;
  }
  timerCnt = timerStart;
}


cDevControlEncoder::tEvent cDevControlEncoderJoystick::getIncrement( void )
{
  if( timerCnt )
  {
    timerCnt--;
  }

  if( btnLeft )
  {
    btnLeft->update();

    if(    btnLeft->isActivated()
        || (!timerCnt && timerStart && btnLeft->isSet()) )
    {
      timerCnt = timerStart;
      return( LEFT );
    }
  }

  if( btnRight )
  {
    btnRight->update();

    if(   btnRight->isActivated()
       || (!timerCnt && timerStart && btnRight->isSet()) )
    {
      timerCnt = timerStart;
      return( RIGHT );
    }
  }
  return( NONE );
}


#line 51 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlEncoderRotaryknob.cpp"





 








cDevControlEncoderRotaryKnob::cDevControlEncoderRotaryKnob( cDevDigital *btnLeftIn,
                                              cDevDigital *btnRightIn,
                                              cDevDigital *btnCtrlIn,
                                              cHwTimer    *timerPtr )
: cDevControlEncoder( btnCtrlIn, timerPtr ),
  btnLeft    ( btnLeftIn ),
  btnRight   ( btnRightIn )

{
}


cDevControlEncoder::tEvent cDevControlEncoderRotaryKnob::getIncrement( void )
{
  if( btnLeft && btnRight )
  {
    btnLeft->update();
    btnRight->update();

    if( btnLeft->isSet() != btnRight->isSet() )
    {
      if( btnLeft->isChanged() )
      {
        return( LEFT );
      }

      if( btnRight->isChanged() )
      {
        return( RIGHT );
      }
    }
  }
  return( NONE );
}


#line 52 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Device/Control/devControlPointer.cpp"





 







cDevControlPointer::cDevControlPointer( cHwTouch &touchIn )

: touch( touchIn )

{
  data.flags = cData::NONE;
  data.posX  = 0;
  data.posY  = 0;
  data.delta = 0;
}


cDevControlPointer::cData cDevControlPointer::get( void )
{
  touch.update();

  int x = touch.getPosX();
  int y = touch.getPosY();
  BYTE isTouched = touch.isTouched();

  if( isTouched && !isTouchedPrev )
  {
    data.flags = cData::CTRL_DWN;
    data.posX  = x;
    data.posY  = y;
    data.delta = 0;
    posXprev    = x;
    posYprev    = y;
  }
  else if( !isTouched  && isTouchedPrev )
  {
    data.flags = cData::CTRL_UP;
    data.posX  = x;
    data.posY  = y;
    data.delta = 0;
  }
  else if( isTouched  && isTouchedPrev )
  {
    data.flags = cData::PRESSED;
    data.posX  = x;
    data.posY  = y;
    data.delta = 0;

    if( x != posXprev || y != posYprev )
    {
      if( abs(posXprev-x) > 15 || abs(posYprev-y) > 15 )
      {
        int deltaX = x-posXprev;
        int deltaY = y-posYprev;
        if( abs(deltaX) > abs(deltaY) )
        {
          data.flags = cData::MOVE_X;
          data.delta = deltaX;
        }
        else
        {
          data.flags = cData::MOVE_Y;
          data.delta = -deltaY;
        }
        posXprev = x;
        posYprev = y;
      }
    }
  }
  else
  {
    data.flags = cData::NONE;
    data.delta = 0;
  }
  isTouchedPrev = isTouched ;
  return( data );
}


#line 53 "..\\EmbSysLib\\Lib\\Src\\Device/Device.cpp"



#line 24 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/Std.cpp"







 


extern "C"
{
  void __cxa_pure_virtual( void )
  {
    abort();
  }
}


#line 29 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/CRC.cpp"





 


#line 10 "..\\EmbSysLib\\Lib\\Src\\Std/CRC.cpp"







cCRC::cCRC( MODE mode,
            WORD startCRC_In,
            WORD generatorPolynomIn )
{
  startCRC         = startCRC_In;
  crc              = startCRC;
  generatorPolynom = generatorPolynomIn;

  if( mode == FAST )
  {
    tabArray = new WORD[256];

    for( WORD i = 0; i < 256 && tabArray; i++ )
    {
      tabArray[i] = tabMethod( i );
    }
  }
  else
  {
    tabArray = 0;
  }
}


cCRC::~cCRC( void )
{
  if( tabArray )
  {
    delete tabArray;
  }
}


WORD cCRC::operator()( const BYTE  *ptr,
                       const DWORD  size )
{
  WORD crcLoc = startCRC;

  for( DWORD i = 0; i < size; i++ )
  {
    BYTE idx = ( *(ptr++) ) ^ crcLoc;

    if( tabArray )
    {
      crcLoc = (crcLoc>>8) ^ tabArray[idx];
    }
    else
    {
      crcLoc = (crcLoc>>8) ^ tabMethod( idx );
    }
  }
  return( crcLoc );
}


void cCRC::operator()( const BYTE data )
{
  BYTE idx = data ^ crc;

  if( tabArray )
  {
    crc = (crc>>8) ^ tabArray[idx];
  }
  else
  {
    crc = (crc>>8) ^ tabMethod( idx );
  }
  
}


inline WORD cCRC::tabMethod( BYTE idx )
{
  WORD crcLoc = 0;

  for( BYTE bit = 0; bit < 8; bit++ )
  {
    if( (crcLoc^idx) & 0x01 )
    {
      crcLoc = (crcLoc>>1) ^ generatorPolynom;
    }
    else
    {
      crcLoc = (crcLoc>>1);
    }
    idx = (idx>>1);
  }
  return( crcLoc );
}


#line 30 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/List.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Std/List.cpp"







cList::Item::Item( cList *list )
{
  PtrNext = 0;
  if( list )
  {
    list->add( this );
  }
}


cList::Item *cList::Item::getNext( void )
{
  return( PtrNext );
}


cList::Item *cList::Item::getPrev( cList &list )
{
  Item *tmp = list.getFirst();
  while( tmp && tmp->getNext() != this )
  {
    tmp = tmp->getNext();
  }
  return( (tmp==this)?0:tmp );
}







cList::cList( void )
{
  PtrFirst = 0;
}


BYTE cList::add(Item *itemPtr)
{
  Item *ptr;

  
  ptr = PtrFirst;

  while( ptr )
  {
    if( ptr == itemPtr )
    {
      return( false );
    }
    if(ptr->PtrNext) 
    {
      ptr = ptr->PtrNext;
    }
    else
    {
      break;
    }
  }

  
  
  if( ptr ) 
  {
    ptr->PtrNext = itemPtr;
  }
  else 
  {
    PtrFirst = itemPtr;
  }
  return( true );
}


cList::Item* cList::getFirst( void )
{
  return( PtrFirst );
}


cList::Item* cList::operator[](WORD index)
{
  Item* ptr = PtrFirst;
  while( ptr && index-- )
  {
    ptr = ptr->PtrNext;
  }
  return( ptr );
}


void cList::updateAll( void )
{
  Item* ptr = PtrFirst;

  while( ptr )
  {
    ptr->update();
    ptr = ptr->PtrNext;
  }
}


#line 31 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/Fifo.cpp"







 












#line 32 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/DataPointer.cpp"





 












#line 33 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/SharedMem.cpp"







 












#line 34 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Std/Timer.cpp"







 







cTimer::cTimer( void )

{
  running = false;
  timeToGo = 0;
}


void cTimer::start( WORD timeToWait_msec,
                    WORD timeToWait_usec )
{
  set( timeToWait_msec, timeToWait_usec );
  start();
}


void cTimer::start( void )
{
  startTime = getTics();
  running = true;
}


BYTE cTimer::timeout( WORD timeToWait_msec,
                      WORD timeToWait_usec )
{
  if( !running )
  {
    set( timeToWait_msec, timeToWait_usec );
  }
  return( timeout() );
}


BYTE cTimer::timeout( void )
{
  BYTE runState = false; 

  if( running )
  {
    if(getTics() - startTime >= timeToGo )
    {
      running = false;
    }
    runState = !running; 
  }

  if( !running )
  {
    start();
  }

  return( runState );
}


void cTimer::stop( void )
{
  running = false;
}


void cTimer::set( WORD timeToWait_msec,
                  WORD timeToWait_usec )
{
  timeToGo =   ((DWORD)timeToWait_msec*1000L + timeToWait_usec)
             / getTimeOfTic();
}


#line 35 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"




#line 1 "..\\EmbSysLib\\Lib\\Src\\Task/TaskHandler.cpp"







 


#line 12 "..\\EmbSysLib\\Lib\\Src\\Task/TaskHandler.cpp"







cTaskHandler::cTaskHandler( cHwTimer *timerPtrIn )
{
  timerPtr = timerPtrIn;
  taskPtr  = 0;

  if( timerPtr )
  {
    timerPtr->add( this );

    cycleTime = timerPtr->getCycleTime();
  }
  else 
  {
    cycleTime = (unsigned long)(-1);
  }
}


cTaskHandler::cTaskHandler( cTaskHandler *taskPtrIn )
{
  timerPtr = 0;
  taskPtr  = taskPtrIn;
  if( taskPtr )
  {
    cycleTime = taskPtr->timerPtr->getCycleTime();
  }
  else 
  {
    cycleTime = (unsigned long)(-1);
  }
}


inline DWORD cTaskHandler::getCycleTime( void )
{
  return( cycleTime );
}


inline unsigned long cTaskHandler::getTics( void )
{
  return( tics );
}


inline void cTaskHandler::run( void )
{
  if( taskPtr )
  {
    cSystem::disableInterrupt();
    tics = taskPtr->getTics();
    cSystem::enableInterrupt();
  }
  idle.updateAll();
}


void cTaskHandler::addTask( Task *taskPtrIn )
{
  if( timerPtr )
  {
    timerPtr->add( taskPtrIn );
  }
  else
  {
    idle.add( taskPtrIn );
  }
}


inline void cTaskHandler::update( void )
{
  tics++;
}







cTaskHandler::Task::Task( cTaskHandler &taskHandler )
{
  taskHandler.addTask( this );
}







cTaskHandler::Timer::Timer( cTaskHandler &taskHandlerIn,
                            WORD          timeToWait_msec,
                            WORD          timeToWait_usec )

: taskHandler( taskHandlerIn )

{ 
  set( timeToWait_msec, timeToWait_usec ); 
}


DWORD cTaskHandler::Timer::getTics( void )
{
  return( taskHandler.getTics() );
}


DWORD cTaskHandler::Timer::getTimeOfTic( void )
{
  return( taskHandler.getCycleTime() );
}


#line 40 "..\\EmbSysLib\\Lib\\Src\\lib.cpp"


