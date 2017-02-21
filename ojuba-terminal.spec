%global owner ojuba-org

Name: ojuba-terminal
Summary: Ojuba Terminal
Summary(ar): طرفية أعجوبة
Version: 0.1
Release: 1%{?dist}
License: WAQFv2
URL: http://ojuba.org
Source: https://github.com/%{owner}/%{name}/archive/%{version}/%{name}-%{version}.tar.gz
Requires: bicon-fonts
Requires: /etc/vconsole.conf
BuildArch: noarch

%description
Ojuba Terminal

%description -l ar
طرفية أعجوبة

%prep
%autosetup -n %{name}-%{version}

%install
%make_install

%post
echo 'KEYMAP="us"
FONT="/usr/share/bicon/font/bicon-8x16-512.psfu.gz"' > /etc/vconsole.conf

%files
%license waqf2-ar.pdf
%doc README.md

%{_bindir}/shell-lang
%{_datadir}/shell-lang/*
%{_sysconfdir}/profile.d/ojuba-terminal.sh

%changelog
* Tue Feb 21 2017 Mosaab Alzoubi <moceap@hotmail.com> - 0.1-1
- Initial
