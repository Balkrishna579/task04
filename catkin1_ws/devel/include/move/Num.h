// Generated by gencpp from file move/Num.msg
// DO NOT EDIT!


#ifndef MOVE_MESSAGE_NUM_H
#define MOVE_MESSAGE_NUM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace move
{
template <class ContainerAllocator>
struct Num_
{
  typedef Num_<ContainerAllocator> Type;

  Num_()
    : num2(0)
    , num(0)  {
    }
  Num_(const ContainerAllocator& _alloc)
    : num2(0)
    , num(0)  {
  (void)_alloc;
    }



   typedef int64_t _num2_type;
  _num2_type num2;

   typedef int64_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::move::Num_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::move::Num_<ContainerAllocator> const> ConstPtr;

}; // struct Num_

typedef ::move::Num_<std::allocator<void> > Num;

typedef boost::shared_ptr< ::move::Num > NumPtr;
typedef boost::shared_ptr< ::move::Num const> NumConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::move::Num_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::move::Num_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::move::Num_<ContainerAllocator1> & lhs, const ::move::Num_<ContainerAllocator2> & rhs)
{
  return lhs.num2 == rhs.num2 &&
    lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::move::Num_<ContainerAllocator1> & lhs, const ::move::Num_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace move

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::move::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::move::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::move::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::move::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::move::Num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::move::Num_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::move::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6346e706caa49d5ab50c519a7d60cf0";
  }

  static const char* value(const ::move::Num_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6346e706caa49d5ULL;
  static const uint64_t static_value2 = 0xab50c519a7d60cf0ULL;
};

template<class ContainerAllocator>
struct DataType< ::move::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "move/Num";
  }

  static const char* value(const ::move::Num_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::move::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 num2\n"
"int64 num\n"
;
  }

  static const char* value(const ::move::Num_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::move::Num_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num2);
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Num_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::move::Num_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::move::Num_<ContainerAllocator>& v)
  {
    s << indent << "num2: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num2);
    s << indent << "num: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVE_MESSAGE_NUM_H
