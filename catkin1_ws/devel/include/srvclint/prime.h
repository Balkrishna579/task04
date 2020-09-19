// Generated by gencpp from file srvclint/prime.msg
// DO NOT EDIT!


#ifndef SRVCLINT_MESSAGE_PRIME_H
#define SRVCLINT_MESSAGE_PRIME_H

#include <ros/service_traits.h>


#include <srvclint/primeRequest.h>
#include <srvclint/primeResponse.h>


namespace srvclint
{

struct prime
{

typedef primeRequest Request;
typedef primeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct prime
} // namespace srvclint


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::srvclint::prime > {
  static const char* value()
  {
    return "2f44a4f612e30235b2307bc2c0cc629b";
  }

  static const char* value(const ::srvclint::prime&) { return value(); }
};

template<>
struct DataType< ::srvclint::prime > {
  static const char* value()
  {
    return "srvclint/prime";
  }

  static const char* value(const ::srvclint::prime&) { return value(); }
};


// service_traits::MD5Sum< ::srvclint::primeRequest> should match
// service_traits::MD5Sum< ::srvclint::prime >
template<>
struct MD5Sum< ::srvclint::primeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::srvclint::prime >::value();
  }
  static const char* value(const ::srvclint::primeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::srvclint::primeRequest> should match
// service_traits::DataType< ::srvclint::prime >
template<>
struct DataType< ::srvclint::primeRequest>
{
  static const char* value()
  {
    return DataType< ::srvclint::prime >::value();
  }
  static const char* value(const ::srvclint::primeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::srvclint::primeResponse> should match
// service_traits::MD5Sum< ::srvclint::prime >
template<>
struct MD5Sum< ::srvclint::primeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::srvclint::prime >::value();
  }
  static const char* value(const ::srvclint::primeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::srvclint::primeResponse> should match
// service_traits::DataType< ::srvclint::prime >
template<>
struct DataType< ::srvclint::primeResponse>
{
  static const char* value()
  {
    return DataType< ::srvclint::prime >::value();
  }
  static const char* value(const ::srvclint::primeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SRVCLINT_MESSAGE_PRIME_H