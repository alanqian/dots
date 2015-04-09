// @project %PROJECT%
//
// @file %FFILE% : header for class %CAMELCLASS%
//
// Copyright (C) %YEAR%, Novasoft
//
// History:
//   Created by %USER%, %DATE%, <%MAIL%>
//

#ifndef %GUARD%
#define %GUARD%

namespace %NAMESPACE%
{
// prereferenced classes

/// %CAMELCLASS%:
class %CAMELCLASS% : public %HERE%_
{
    /// Typedefs and Enums
  private:
    typedef _ super;
    /// Constants (static const data members)

    /// Constructors
  public:
    %CAMELCLASS%();
    /// Destructor
    virtual ~%CAMELCLASS%();
  private:
    DISALLOW_COPY_AND_ASSIGN(%CAMELCLASS%);

    /// Overidables
  protected:
    /// Public methods
  public:
    /// Private methods

    /// Data Members (except static const data members)
  private:
    /// Static methods and Friends
    /// Static Data Members
};  // class %CAMELCLASS%

}  // namespace %NAMESPACE%

#endif  // !%GUARD%
