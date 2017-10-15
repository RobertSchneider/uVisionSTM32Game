#line 1 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS.cpp"







 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS.cpp"





 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS.h"





 






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

#line 30 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 31 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 32 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 33 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 34 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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


#line 35 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 36 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 37 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 38 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 39 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 40 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 41 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 42 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 43 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"

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

#line 45 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 46 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 47 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"




#line 52 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 53 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 54 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 55 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 56 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 57 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 59 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 61 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 62 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 63 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 64 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 65 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 66 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 67 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 68 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
#line 69 "..\\EmbSysLib\\Lib\\Src\\Hardware/Hardware.h"
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

#line 14 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS.h"










 
class cRTOS
{
  public:
    
    











 
    class Task
    {
      protected:
        
        


 
        Task( cRTOS    &rtos,
              unsigned  stackSize );

        
        
 
        virtual ~Task( void );


      public:
        
        




 
        virtual void Stop( void );

        
        

 
        virtual void Pause( WORD time = 0 );

        
        
 
        virtual void Start( void );

        
        


 
        virtual void Finish( void );

        
        



 
        virtual bool isActive( void ) { return( isActiveFlag );}

      private:
        
        virtual void update( void ) = 0;

        
        virtual void OnStart( void ) {}

        
        virtual void OnStop( void ) {}

        
        static DWORD  starter( void *ptr );

      private:
        
        char     *stackAddr;
        unsigned  stackSize;
        int       id;
        BYTE      isActiveFlag;

        public:
        
        cRTOS &rtos;

      
      friend class cRTOS;

      }; 

  public:
    
    









 
    class Timer : public cTimer
    {
      public:
        
        





 
        Timer( WORD timeToWait_msec = 0);

      private:
        
        virtual DWORD getTics();

        
        virtual DWORD getTimeOfTic();

    }; 

  public:
    
    



 
    cRTOS( void );

  protected:
    
    int Start( Task &task );

    
    void Pause( Task &task );

    
    void Stop( Task &task );

  protected:
    
    virtual int add( unsigned sp ) = 0;

    
    virtual DWORD del( int id ) = 0;
    
    
    virtual DWORD get( int id ) = 0;

  protected:
    
    virtual unsigned scheduler( unsigned sp,
                                bool     isSysTic ) = 0;

  public:
    
    
    
    static DWORD schedule( DWORD sp, BYTE flag )
    {
      return( ptr->scheduler( sp, flag ) );
    }

  public:
    
    static cRTOS  *ptr;

}; 

#line 10 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS.cpp"


cRTOS *cRTOS::ptr = 0;







cRTOS::Task::Task( cRTOS    &rtosIn,
                   unsigned  stackSizeIn )

: rtos( rtosIn )
{
  stackSize = stackSizeIn;
  stackAddr = new char[stackSize];
  isActiveFlag = false;
}


cRTOS::Task::~Task( void )
{
   Stop();
   delete stackAddr;
   stackAddr = 0;
}


DWORD  cRTOS::Task::starter( void *ptr )
{
  ((Task*)ptr)->update();
  ((Task*)ptr)->Finish();
  return(0);
}


void cRTOS::Task::Finish( void )
{
  if( isActiveFlag )
  {
    isActiveFlag = false;
    OnStop();
    rtos.Stop( *this );
  }
}


void cRTOS::Task::Stop( void )
{
  if( isActiveFlag )
  {
    isActiveFlag = false;
    rtos.Stop( *this );
    OnStop();
  }
}


void cRTOS::Task::Pause( WORD time  )
{
  unsigned long timeToGo = cHwRTOS_MCU::getSysTime() + time;

  do
  {
    rtos.Pause( *this );
  } while( cHwRTOS_MCU::getSysTime() < timeToGo );

}


void cRTOS::Task::Start( void )
{
  if( !isActiveFlag )
  {
    isActiveFlag = true;
    OnStart();
    rtos.Start( *this );
  }
}







cRTOS::Timer::Timer( WORD timeToWait_msec )
{ 
  set( timeToWait_msec ); 
}


DWORD cRTOS::Timer::getTics( void )
{
  return( cHwRTOS_MCU::getSysTime() );
}


DWORD cRTOS::Timer::getTimeOfTic( void )
{
  return( 1000  );
}







cRTOS::cRTOS( void )
{
  ptr = this;
}


int cRTOS::Start( cRTOS::Task &task )
{
  int ret = 0;

  
  
  cSystem::disableInterrupt();

  unsigned sp = cHwRTOS_MCU::start( task.stackAddr,
                                    task.stackSize,
                                    (void *)&task,
                                    cRTOS::Task::starter );

  ret = add( sp );

  
  cSystem::enableInterrupt();

  task.id = ret;

  return (ret);
}


void cRTOS::Pause( cRTOS::Task &task )
{
  cHwRTOS_MCU::pause();
}


void cRTOS::Stop( cRTOS::Task &task )
{
  cHwRTOS_MCU::stop( get(task.id) );

  del( task.id );
}


#line 12 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS.cpp"
#line 1 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS_Scheduler.cpp"





 


#line 1 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS_Scheduler.h"





 






#line 14 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS_Scheduler.h"
#line 15 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS_Scheduler.h"








 
template <BYTE NUM_OF_TASK> 
class cRTOS_RR : public cRTOS
{
  private:
    
    typedef struct
    {
      unsigned stackPtr; 
      int      flags;    
    } TaskInfo;

  private:
    
    typedef enum
    {
      IN_USE_FLAG = 0x01,
      EXEC_FLAG   = 0x02,
      IDLE_FLAG   = 0x04
    } Flag;

  public:
    
    


 
    cRTOS_RR( unsigned us = 1000 )
  
    : cRTOS()
    
    {
      currentTask       = 0;
      currentCyclicTask = 0;
      
      for( int i = 0; i < NUM_OF_TASK + 1; i++ )
      {
          taskTable[i].flags = 0;
      }
      taskTable[0].stackPtr = 0;
      taskTable[0].flags    = IN_USE_FLAG | EXEC_FLAG | IDLE_FLAG;

      cHwRTOS_MCU::init( (WORD)us , 
                         (DWORD (*)( DWORD sp, BYTE flag ))schedule );
    }
  private:
    
    
    virtual int add( unsigned stackPtr )
    {
      if( currentCyclicTask == 0)
      {
        currentCyclicTask = 1;
      }
      int flags = IN_USE_FLAG | EXEC_FLAG;

      for(int i = 0; i < NUM_OF_TASK + 1; i++ )
      {
        if( taskTable[i].flags == 0 )
        {
          taskTable[i].stackPtr = stackPtr;
          taskTable[i].flags    = flags;
          return( i );
        }
      }
      return( 0 );
    }

    
    virtual DWORD del( int id )
    {
      DWORD ret = taskTable[id].stackPtr;
      
      taskTable[id].flags    = 0;
      taskTable[id].stackPtr = 0;
      return( ret );
    }

    
    
    virtual DWORD get( int id )
    {
      return( taskTable[id].stackPtr );
    }

    
    virtual unsigned scheduler( unsigned stackPtr,
                                bool     isSysTic )
    {
      taskTable[currentTask].stackPtr = stackPtr;

      if( isSysTic ) 
      {
        lastTask = currentCyclicTask;
        while( 1 )
        {
          currentCyclicTask++;
          
          if( currentCyclicTask == NUM_OF_TASK + 1 )
          {
            currentCyclicTask = 0;
          }
          if( currentCyclicTask == lastTask )
          {
            break;
          }
          if( taskTable[currentCyclicTask].flags & EXEC_FLAG )
          {  
            break;
          }
        }        
        currentTask = currentCyclicTask;
      }
      else
      {
        currentTask = 0;
      }

      return( taskTable[currentTask].stackPtr );
    }

  private:
    
    TaskInfo  taskTable[ NUM_OF_TASK + 1 ];
    int       currentTask;
    int       currentCyclicTask;
    int       lastTask;
};

#line 10 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS/RTOS_Scheduler.cpp"











#line 13 "..\\EmbSysLib\\Lib\\Src\\Module\\RTOS.cpp"


