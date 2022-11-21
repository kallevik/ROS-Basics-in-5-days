// Generated by gencpp from file actions_quiz/CustomActionMsgFeedback.msg
// DO NOT EDIT!


#ifndef ACTIONS_QUIZ_MESSAGE_CUSTOMACTIONMSGFEEDBACK_H
#define ACTIONS_QUIZ_MESSAGE_CUSTOMACTIONMSGFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace actions_quiz
{
template <class ContainerAllocator>
struct CustomActionMsgFeedback_
{
  typedef CustomActionMsgFeedback_<ContainerAllocator> Type;

  CustomActionMsgFeedback_()
    : feedback()  {
    }
  CustomActionMsgFeedback_(const ContainerAllocator& _alloc)
    : feedback(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _feedback_type;
  _feedback_type feedback;





  typedef boost::shared_ptr< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct CustomActionMsgFeedback_

typedef ::actions_quiz::CustomActionMsgFeedback_<std::allocator<void> > CustomActionMsgFeedback;

typedef boost::shared_ptr< ::actions_quiz::CustomActionMsgFeedback > CustomActionMsgFeedbackPtr;
typedef boost::shared_ptr< ::actions_quiz::CustomActionMsgFeedback const> CustomActionMsgFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator1> & lhs, const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.feedback == rhs.feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator1> & lhs, const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace actions_quiz

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c14cdf907e5c7c7fd47292add15660f0";
  }

  static const char* value(const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc14cdf907e5c7c7fULL;
  static const uint64_t static_value2 = 0xd47292add15660f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actions_quiz/CustomActionMsgFeedback";
  }

  static const char* value(const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"string feedback\n"
;
  }

  static const char* value(const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CustomActionMsgFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::actions_quiz::CustomActionMsgFeedback_<ContainerAllocator>& v)
  {
    s << indent << "feedback: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTIONS_QUIZ_MESSAGE_CUSTOMACTIONMSGFEEDBACK_H
