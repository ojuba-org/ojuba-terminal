%global owner ojuba-org

Name: ojuba-terminal
Summary: Ojuba Terminal
Summary(ar): طرفية أعجوبة
Version: 0.3
Release: 1%{?dist}
License: WAQFv2
URL: http://ojuba.org
Source: https://github.com/%{owner}/%{name}/archive/%{version}/%{name}-%{version}.tar.gz
Requires: bicon-fonts
BuildArch: noarch

%description
Ojuba Terminal

%description -l ar
طرفية أعجوبة

%prep
%autosetup -n %{name}-%{version}

%install
%make_install

%files
%license waqf2-ar.pdf
%doc README.md
%{_bindir}/shell-lang
%{_datadir}/shell-lang/*
%{_datadir}/polkit-1/*
%{_sysconfdir}/profile.d/ojuba-terminal.sh

%changelog
* Wed Feb 22 2017 Mosaab Alzoubi <moceap@hotmail.com> - 0.3-1
- Support Font

* Tue Feb 21 2017 Mosaab Alzoubi <moceap@hotmail.com> - 0.2-1
- Fixes

* Tue Feb 21 2017 Mosaab Alzoubi <moceap@hotmail.com> - 0.1-1
- Initial
