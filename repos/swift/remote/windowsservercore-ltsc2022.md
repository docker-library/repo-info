## `swift:windowsservercore-ltsc2022`

```console
$ docker pull swift@sha256:f7f5fd5211b5dec008a02c34d5243f2d218d84a9484a79f1a576512644ae1cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `swift:windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull swift@sha256:137b0462cff060640b8b38efe4d86b11671321fc6b90825533317ee0fdbfbb2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 GB (7619333464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca05f8a47caf8b2760c99480f234e98830100974287b05b942a1609d241e9663`
-	Default Command: `["powershell.exe","-nologo","-ExecutionPolicy","Bypass"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:16:12 GMT
RUN cmd /S /C #(nop)  LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Wed, 11 Nov 2026 22:16:14 GMT
RUN cmd /S /C #(nop)  LABEL description=Docker Container for the Swift programming language
# Wed, 11 Nov 2026 22:16:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:16:16 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 11 Nov 2026 22:16:17 GMT
ENV PYTHONUTF8=1
# Wed, 11 Nov 2026 22:16:46 GMT
RUN reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
# Wed, 11 Nov 2026 22:16:46 GMT
ARG GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe
# Wed, 11 Nov 2026 22:16:47 GMT
ARG GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C
# Wed, 11 Nov 2026 22:18:30 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:GIT});                   Invoke-WebRequest -Uri ${env:GIT} -OutFile git.exe;                             Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:GIT_SHA256});     $Hash = Get-FileHash git.exe -Algorithm sha256;                                 if ($Hash.Hash -eq ${env:GIT_SHA256}) {                                           Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing git ... ';                                    $Process =                                                                          Start-Process git.exe -Wait -PassThru -NoNewWindow -ArgumentList @(               '/SP-',                                                                         '/VERYSILENT',                                                                  '/SUPPRESSMSGBOXES',                                                            '/NOCANCEL',                                                                    '/NORESTART',                                                                   '/CLOSEAPPLICATIONS',                                                           '/FORCECLOSEAPPLICATIONS',                                                      '/NOICONS',                                                                     '/COMPONENTS="gitlfs"',                                                         '/EditorOption=VIM',                                                            '/PathOption=Cmd',                                                              '/SSHOption=OpenSSH',                                                           '/CURLOption=WinSSL',                                                           '/UseCredentialManager=Enabled',                                                '/EnableSymlinks=Enabled',                                                      '/EnableFSMonitor=Enabled'                                                    );                                                                          if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force git.exe;                                                     Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Wed, 11 Nov 2026 22:18:32 GMT
ARG PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
# Wed, 11 Nov 2026 22:18:33 GMT
ARG PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B
# Wed, 11 Nov 2026 22:19:28 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:PY310});                 Invoke-WebRequest -Uri ${env:PY310} -OutFile python-3.10.11-amd64.exe;          Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:PY310_SHA256});    $Hash = Get-FileHash python-3.10.11-amd64.exe -Algorithm sha256;                if ($Hash.Hash -eq ${env:PY310_SHA256}) {                                         Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Python ... ';                                 $Process =                                                                          Start-Process python-3.10.11-amd64.exe -Wait -PassThru -NoNewWindow -ArgumentList @(            'AssociateFiles=0',                                                             'Include_doc=0',                                                                'Include_debug=0',                                                              'Include_lib=1',                                                                'Include_tcltk=0',                                                              'Include_test=0',                                                               'InstallAllUsers=1',                                                            'InstallLauncherAllUsers=0',                                                    'PrependPath=1',                                                                '/quiet'                                                                      );                                                                         if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force python-3.10.11-amd64.exe;                                    Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Wed, 11 Nov 2026 22:19:28 GMT
ARG VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe
# Wed, 11 Nov 2026 22:19:29 GMT
ARG VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
# Wed, 11 Nov 2026 22:30:31 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:VSB});                   Invoke-WebRequest -Uri ${env:VSB} -OutFile vs_buildtools.exe;                   Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:VSB_SHA256});     $Hash = Get-FileHash vs_buildtools.exe -Algorithm sha256;                       if ($Hash.Hash -eq ${env:VSB_SHA256}) {                                           Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Visual Studio Build Tools ... ';              $Process =                                                                          Start-Process vs_buildtools.exe -Wait -PassThru -NoNewWindow -ArgumentList @(           '--quiet',                                                                      '--wait',                                                                       '--norestart',                                                                  '--nocache',                                                                    '--add', 'Microsoft.VisualStudio.Component.Windows11SDK.22000',                 '--add', 'Microsoft.VisualStudio.Component.VC.Tools.x86.x64'                  );                                                                          if ($Process.ExitCode -eq 0 -or $Process.ExitCode -eq 3010) {                     Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force vs_buildtools.exe;                                           Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Wed, 11 Nov 2026 22:30:32 GMT
ARG SWIFT=https://download.swift.org/swift-6.4.2-release/windows10/swift-6.4.2-RELEASE/swift-6.4.2-RELEASE-windows10.exe
# Wed, 11 Nov 2026 22:30:33 GMT
ARG SWIFT_SHA256=8FE5D31CA1153DFE6BE3A76DE0B93347FD42A27599671E9F9ADE23A3648E7184
# Wed, 11 Nov 2026 22:35:27 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B SWIFT=https://download.swift.org/swift-6.4.2-release/windows10/swift-6.4.2-RELEASE/swift-6.4.2-RELEASE-windows10.exe SWIFT_SHA256=8FE5D31CA1153DFE6BE3A76DE0B93347FD42A27599671E9F9ADE23A3648E7184 VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:SWIFT});                 Invoke-WebRequest -Uri ${env:SWIFT} -OutFile installer.exe;                     Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:SWIFT_SHA256});     $Hash = Get-FileHash installer.exe -Algorithm sha256;                           if ($Hash.Hash -eq ${env:SWIFT_SHA256}) {                                         Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Swift ... ';                                  $Process =                                                                          Start-Process installer.exe -Wait -PassThru -NoNewWindow -ArgumentList @(            '/quiet',                                                                       '/norestart'                                                                  );                                                                         if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force installer.exe;                                               Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Wed, 11 Nov 2026 22:35:27 GMT
CMD ["powershell.exe" "-nologo" "-ExecutionPolicy" "Bypass"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed74ef50dcb661a6049fa26f3e836b27b0c8cbf970e46114ca74ace74cb2d9d6`  
		Last Modified: Wed, 11 Nov 2026 22:35:57 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d85aa484393ea047bfa1c643ea5389fc46b0ec5d329c24bf7f83837e1cfe2c`  
		Last Modified: Wed, 11 Nov 2026 22:35:56 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0c65dc4daa08a40157ec0282cad5dc092dd4af6d0b8e8e23c5a7bc39a329b5`  
		Last Modified: Wed, 11 Nov 2026 22:35:54 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf82447b916b900f554e05bf2b816171bd736a301efca393908b96104c19eb21`  
		Last Modified: Wed, 11 Nov 2026 22:35:52 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ee78781fb8778ede640add529ea7617c7aa1805b8dfc2283099689a473b64`  
		Last Modified: Wed, 11 Nov 2026 22:35:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103a148bc1329b8fd1d8597b1008efdcecd7c4ae845466b404136867508883ad`  
		Last Modified: Wed, 11 Nov 2026 22:35:49 GMT  
		Size: 340.7 KB (340674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b654e5b0abd1d3768ea4136419c1bdcdb2cd6674ece9094108a51e21278d66`  
		Last Modified: Wed, 11 Nov 2026 22:35:47 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85b61597a8111e0f78138023abb68861e696f1fd98ffd182e2551eb6c80cde3`  
		Last Modified: Wed, 11 Nov 2026 22:35:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073eb3ea1669bd12a08ba8dbf646466fbd653bbe56b9cc21dca7d26556f1294d`  
		Last Modified: Wed, 11 Nov 2026 22:37:51 GMT  
		Size: 163.9 MB (163911311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a90566926e30998ff03778a91af49d00c548ca73fcf96d8b8b236d75c22aad`  
		Last Modified: Wed, 11 Nov 2026 22:35:44 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bfaf743648ab8c227b42f4f470ad48155986fffbb3bcc561f867e7d08efb00`  
		Last Modified: Wed, 11 Nov 2026 22:35:43 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57c3b539b1b796f4ff917ccd0f6cfe466edaca82bf1aac35f6be4997def8ff0`  
		Last Modified: Wed, 11 Nov 2026 22:35:58 GMT  
		Size: 46.2 MB (46223277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae684e90e22dd9752efdfbeb27f1388806628019efc977c0a663f45cea226871`  
		Last Modified: Wed, 11 Nov 2026 22:35:42 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f0d411f1ddb07cd3b61eda13222ff5620d89ff0558db39aba046158ddba83`  
		Last Modified: Wed, 11 Nov 2026 22:35:42 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd405936cee99d2118ae1e0ac2ca0df77592850661e8d8cb7d3dcbb3628b9d4`  
		Last Modified: Wed, 11 Nov 2026 22:41:43 GMT  
		Size: 1.7 GB (1739328196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0e36cd7cde1cea2fa345279d60fe973e18c70e95321f2793ec32fd91e41f3`  
		Last Modified: Wed, 11 Nov 2026 22:35:40 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc17e48f861d3ce71efe0083b598bc89cc7a94a8a852527e0f4b0918183c79b9`  
		Last Modified: Wed, 11 Nov 2026 22:35:40 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff226f401b1be83cb2e38109a07d2e112cb0dac7406f72e9c1e4658446faf70a`  
		Last Modified: Wed, 11 Nov 2026 22:39:59 GMT  
		Size: 3.4 GB (3423164038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c301a83e827422e2de9c351f14c536073526c2868ce4964a2b03db3762da2c`  
		Last Modified: Wed, 11 Nov 2026 22:35:40 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
