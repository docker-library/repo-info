## `swift:windowsservercore-ltsc2022`

```console
$ docker pull swift@sha256:38f9375caf689e2f9c78abb93b421b3daf6ca477d39e9db96fbb9403d4137535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `swift:windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull swift@sha256:cb0765a694c95b26ad875b22a14b067ec1622e5af12afde4e759ba1f0b1ad30c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 GB (7621992441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fd55716d8a303e08730d7236c1ef77f8f4b8ddb7f80eb30558aeddcaa09497`
-	Default Command: `["powershell.exe","-nologo","-ExecutionPolicy","Bypass"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Fri, 20 Nov 2026 20:03:00 GMT
RUN cmd /S /C #(nop)  LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Fri, 20 Nov 2026 20:03:04 GMT
RUN cmd /S /C #(nop)  LABEL description=Docker Container for the Swift programming language
# Fri, 20 Nov 2026 20:03:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 20 Nov 2026 20:03:06 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 20 Nov 2026 20:03:08 GMT
ENV PYTHONUTF8=1
# Fri, 20 Nov 2026 20:03:59 GMT
RUN reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
# Fri, 20 Nov 2026 20:04:00 GMT
ARG GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe
# Fri, 20 Nov 2026 20:04:01 GMT
ARG GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C
# Fri, 20 Nov 2026 20:06:25 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:GIT});                   Invoke-WebRequest -Uri ${env:GIT} -OutFile git.exe;                             Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:GIT_SHA256});     $Hash = Get-FileHash git.exe -Algorithm sha256;                                 if ($Hash.Hash -eq ${env:GIT_SHA256}) {                                           Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing git ... ';                                    $Process =                                                                          Start-Process git.exe -Wait -PassThru -NoNewWindow -ArgumentList @(               '/SP-',                                                                         '/VERYSILENT',                                                                  '/SUPPRESSMSGBOXES',                                                            '/NOCANCEL',                                                                    '/NORESTART',                                                                   '/CLOSEAPPLICATIONS',                                                           '/FORCECLOSEAPPLICATIONS',                                                      '/NOICONS',                                                                     '/COMPONENTS="gitlfs"',                                                         '/EditorOption=VIM',                                                            '/PathOption=Cmd',                                                              '/SSHOption=OpenSSH',                                                           '/CURLOption=WinSSL',                                                           '/UseCredentialManager=Enabled',                                                '/EnableSymlinks=Enabled',                                                      '/EnableFSMonitor=Enabled'                                                    );                                                                          if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force git.exe;                                                     Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Fri, 20 Nov 2026 20:06:26 GMT
ARG PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
# Fri, 20 Nov 2026 20:06:27 GMT
ARG PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B
# Fri, 20 Nov 2026 20:07:32 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:PY310});                 Invoke-WebRequest -Uri ${env:PY310} -OutFile python-3.10.11-amd64.exe;          Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:PY310_SHA256});    $Hash = Get-FileHash python-3.10.11-amd64.exe -Algorithm sha256;                if ($Hash.Hash -eq ${env:PY310_SHA256}) {                                         Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Python ... ';                                 $Process =                                                                          Start-Process python-3.10.11-amd64.exe -Wait -PassThru -NoNewWindow -ArgumentList @(            'AssociateFiles=0',                                                             'Include_doc=0',                                                                'Include_debug=0',                                                              'Include_lib=1',                                                                'Include_tcltk=0',                                                              'Include_test=0',                                                               'InstallAllUsers=1',                                                            'InstallLauncherAllUsers=0',                                                    'PrependPath=1',                                                                '/quiet'                                                                      );                                                                         if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force python-3.10.11-amd64.exe;                                    Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Fri, 20 Nov 2026 20:07:32 GMT
ARG VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe
# Fri, 20 Nov 2026 20:07:33 GMT
ARG VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
# Fri, 20 Nov 2026 20:19:22 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:VSB});                   Invoke-WebRequest -Uri ${env:VSB} -OutFile vs_buildtools.exe;                   Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:VSB_SHA256});     $Hash = Get-FileHash vs_buildtools.exe -Algorithm sha256;                       if ($Hash.Hash -eq ${env:VSB_SHA256}) {                                           Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Visual Studio Build Tools ... ';              $Process =                                                                          Start-Process vs_buildtools.exe -Wait -PassThru -NoNewWindow -ArgumentList @(           '--quiet',                                                                      '--wait',                                                                       '--norestart',                                                                  '--nocache',                                                                    '--add', 'Microsoft.VisualStudio.Component.Windows11SDK.22000',                 '--add', 'Microsoft.VisualStudio.Component.VC.Tools.x86.x64'                  );                                                                          if ($Process.ExitCode -eq 0 -or $Process.ExitCode -eq 3010) {                     Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force vs_buildtools.exe;                                           Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Fri, 20 Nov 2026 20:19:23 GMT
ARG SWIFT=https://download.swift.org/swift-6.4.3-release/windows10/swift-6.4.3-RELEASE/swift-6.4.3-RELEASE-windows10.exe
# Fri, 20 Nov 2026 20:19:24 GMT
ARG SWIFT_SHA256=A4F1369833F77DE28DBAC998C8DEBE1C1D6044410DC6380238AE61A0D7CE5F77
# Fri, 20 Nov 2026 20:24:18 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B SWIFT=https://download.swift.org/swift-6.4.3-release/windows10/swift-6.4.3-RELEASE/swift-6.4.3-RELEASE-windows10.exe SWIFT_SHA256=A4F1369833F77DE28DBAC998C8DEBE1C1D6044410DC6380238AE61A0D7CE5F77 VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:SWIFT});                 Invoke-WebRequest -Uri ${env:SWIFT} -OutFile installer.exe;                     Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:SWIFT_SHA256});     $Hash = Get-FileHash installer.exe -Algorithm sha256;                           if ($Hash.Hash -eq ${env:SWIFT_SHA256}) {                                         Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Swift ... ';                                  $Process =                                                                          Start-Process installer.exe -Wait -PassThru -NoNewWindow -ArgumentList @(            '/quiet',                                                                       '/norestart'                                                                  );                                                                         if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force installer.exe;                                               Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Fri, 20 Nov 2026 20:24:18 GMT
CMD ["powershell.exe" "-nologo" "-ExecutionPolicy" "Bypass"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99684d41935f39fc82190d64b37f6e1c95fc1619e3ca958d9c7334bcf07e5a9`  
		Last Modified: Fri, 20 Nov 2026 20:24:50 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8448f4902d13c2c35dfc69d5fb812436046e3a8284afd943302ae17bfcb4ea37`  
		Last Modified: Fri, 20 Nov 2026 20:24:48 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2840bcad0d44d6196478672df130aae2bca0db23fc936daa074180f3a18ddebb`  
		Last Modified: Fri, 20 Nov 2026 20:24:46 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52badbb3160646d151a0d837c73f3ed067d0db88f486ae4965e5f8f8b2bc8bf`  
		Last Modified: Fri, 20 Nov 2026 20:24:45 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dbaf5ee0353457e700318f37c9d861f47f38be1a566401e739a61594e95de4`  
		Last Modified: Fri, 20 Nov 2026 20:24:43 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8da9f697f7c6912794679d00c55c3960941d7344c6f154d7b0e13a83db28af`  
		Last Modified: Fri, 20 Nov 2026 20:24:41 GMT  
		Size: 357.0 KB (356960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6649de07e478fafd478242febfaec2b086222c67797bb6f6cddf683aafb44fc`  
		Last Modified: Fri, 20 Nov 2026 20:24:38 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d51072273c6e1e64a3d83745704b018e538226fd96c9d5dfa32a0fbb2ad715d`  
		Last Modified: Fri, 20 Nov 2026 20:24:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f958fefbf4a7f02b1ff1648d7e8fb4107fef4700b4b5eff8c054dd1a80d198`  
		Last Modified: Fri, 20 Nov 2026 20:26:46 GMT  
		Size: 163.9 MB (163911435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae276edbf79d556410e4df5d99db67f5b652a1addfa1400a870644273c5d02b`  
		Last Modified: Fri, 20 Nov 2026 20:24:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e59f7df6bb07b75041e35594e692d1edd160180645ebfc6a906386813bd6e18`  
		Last Modified: Fri, 20 Nov 2026 20:24:35 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7e3614956f7ba46bb9d2d2c80a3652eb766eeea57f025e18c299bc47c1f640`  
		Last Modified: Fri, 20 Nov 2026 20:25:08 GMT  
		Size: 46.2 MB (46234753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cc6bbd6c9857b0a99acd2719b06be401d4136e5cd4fb9d14baba99c5f44752`  
		Last Modified: Fri, 20 Nov 2026 20:24:33 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcde6d963086e58d8549285b098682e639fac94ec178ff9f2dcaada4a6e3d2e5`  
		Last Modified: Fri, 20 Nov 2026 20:24:33 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd456990caae8f998ca4fe48b9ce79d8d234a0ab1b2beab032f17d60b4de20b`  
		Last Modified: Fri, 20 Nov 2026 20:29:21 GMT  
		Size: 1.7 GB (1739683208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b244325e86aef6f8b83c2635ea579a2e00f55adf6531d9b452afbdc3686d5c8`  
		Last Modified: Fri, 20 Nov 2026 20:24:31 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a411f670ebf3961ec08542273cfb8a4df17a33592d0fa1ab6b015d3a481f71`  
		Last Modified: Fri, 20 Nov 2026 20:24:31 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779a51d97eaf0a9cf3a305c8149d356177e934de9969ba1890cc3cbd0b9d0823`  
		Last Modified: Fri, 20 Nov 2026 20:28:24 GMT  
		Size: 3.4 GB (3425697150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364a458b57fce644d38935749fd6389097f70633603c2debd0929246e6c97c45`  
		Last Modified: Fri, 20 Nov 2026 20:24:32 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
