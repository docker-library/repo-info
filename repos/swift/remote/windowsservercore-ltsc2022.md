## `swift:windowsservercore-ltsc2022`

```console
$ docker pull swift@sha256:4f08729adca24996fadbd1ce5e215afa5346aac2cee62f81892937dfd5ef67fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `swift:windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull swift@sha256:7d7c75bb8d2e744bd707a59047e6ba2f268f4440d8d0bcda4cd1d75bf11f722b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 GB (7619039261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b7474eff8e5de6b3733f044986d140b534fe19f26519456f00503ce76f6856f`
-	Default Command: `["powershell.exe","-nologo","-ExecutionPolicy","Bypass"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 20:11:45 GMT
RUN cmd /S /C #(nop)  LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 16 Nov 2026 20:11:45 GMT
RUN cmd /S /C #(nop)  LABEL description=Docker Container for the Swift programming language
# Mon, 16 Nov 2026 20:11:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:11:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 16 Nov 2026 20:11:48 GMT
ENV PYTHONUTF8=1
# Mon, 16 Nov 2026 20:11:54 GMT
RUN reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
# Mon, 16 Nov 2026 20:11:54 GMT
ARG GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe
# Mon, 16 Nov 2026 20:11:55 GMT
ARG GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C
# Mon, 16 Nov 2026 20:12:50 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:GIT});                   Invoke-WebRequest -Uri ${env:GIT} -OutFile git.exe;                             Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:GIT_SHA256});     $Hash = Get-FileHash git.exe -Algorithm sha256;                                 if ($Hash.Hash -eq ${env:GIT_SHA256}) {                                           Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing git ... ';                                    $Process =                                                                          Start-Process git.exe -Wait -PassThru -NoNewWindow -ArgumentList @(               '/SP-',                                                                         '/VERYSILENT',                                                                  '/SUPPRESSMSGBOXES',                                                            '/NOCANCEL',                                                                    '/NORESTART',                                                                   '/CLOSEAPPLICATIONS',                                                           '/FORCECLOSEAPPLICATIONS',                                                      '/NOICONS',                                                                     '/COMPONENTS="gitlfs"',                                                         '/EditorOption=VIM',                                                            '/PathOption=Cmd',                                                              '/SSHOption=OpenSSH',                                                           '/CURLOption=WinSSL',                                                           '/UseCredentialManager=Enabled',                                                '/EnableSymlinks=Enabled',                                                      '/EnableFSMonitor=Enabled'                                                    );                                                                          if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force git.exe;                                                     Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Mon, 16 Nov 2026 20:12:51 GMT
ARG PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe
# Mon, 16 Nov 2026 20:12:51 GMT
ARG PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B
# Mon, 16 Nov 2026 20:13:25 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:PY310});                 Invoke-WebRequest -Uri ${env:PY310} -OutFile python-3.10.11-amd64.exe;          Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:PY310_SHA256});    $Hash = Get-FileHash python-3.10.11-amd64.exe -Algorithm sha256;                if ($Hash.Hash -eq ${env:PY310_SHA256}) {                                         Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Python ... ';                                 $Process =                                                                          Start-Process python-3.10.11-amd64.exe -Wait -PassThru -NoNewWindow -ArgumentList @(            'AssociateFiles=0',                                                             'Include_doc=0',                                                                'Include_debug=0',                                                              'Include_lib=1',                                                                'Include_tcltk=0',                                                              'Include_test=0',                                                               'InstallAllUsers=1',                                                            'InstallLauncherAllUsers=0',                                                    'PrependPath=1',                                                                '/quiet'                                                                      );                                                                         if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force python-3.10.11-amd64.exe;                                    Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Mon, 16 Nov 2026 20:13:26 GMT
ARG VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe
# Mon, 16 Nov 2026 20:13:26 GMT
ARG VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
# Mon, 16 Nov 2026 20:23:11 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:VSB});                   Invoke-WebRequest -Uri ${env:VSB} -OutFile vs_buildtools.exe;                   Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:VSB_SHA256});     $Hash = Get-FileHash vs_buildtools.exe -Algorithm sha256;                       if ($Hash.Hash -eq ${env:VSB_SHA256}) {                                           Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Visual Studio Build Tools ... ';              $Process =                                                                          Start-Process vs_buildtools.exe -Wait -PassThru -NoNewWindow -ArgumentList @(           '--quiet',                                                                      '--wait',                                                                       '--norestart',                                                                  '--nocache',                                                                    '--add', 'Microsoft.VisualStudio.Component.Windows11SDK.22000',                 '--add', 'Microsoft.VisualStudio.Component.VC.Tools.x86.x64'                  );                                                                          if ($Process.ExitCode -eq 0 -or $Process.ExitCode -eq 3010) {                     Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force vs_buildtools.exe;                                           Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Mon, 16 Nov 2026 20:23:12 GMT
ARG SWIFT=https://download.swift.org/swift-6.4.2-release/windows10/swift-6.4.2-RELEASE/swift-6.4.2-RELEASE-windows10.exe
# Mon, 16 Nov 2026 20:23:12 GMT
ARG SWIFT_SHA256=8FE5D31CA1153DFE6BE3A76DE0B93347FD42A27599671E9F9ADE23A3648E7184
# Mon, 16 Nov 2026 20:28:16 GMT
# ARGS: GIT=https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe GIT_SHA256=726056328967F242FE6E9AFBFE7823903A928AFF577DCF6F517F2FB6DA6CE83C PY310=https://www.python.org/ftp/python/3.10.11/python-3.10.11-amd64.exe PY310_SHA256=D8DEDE5005564B408BA50317108B765ED9C3C510342A598F9FD42681CBE0648B SWIFT=https://download.swift.org/swift-6.4.2-release/windows10/swift-6.4.2-RELEASE/swift-6.4.2-RELEASE-windows10.exe SWIFT_SHA256=8FE5D31CA1153DFE6BE3A76DE0B93347FD42A27599671E9F9ADE23A3648E7184 VSB=https://download.visualstudio.microsoft.com/download/pr/ae7ac791-9759-4076-bba7-47ff510c57af/a783199025439d65f310bff041e278b966a6dbed8dbcd7fc96b55389f574ef41/vs_BuildTools.exe VSB_SHA256=A783199025439D65F310BFF041E278B966A6DBED8DBCD7FC96B55389F574EF41
RUN Write-Host -NoNewLine ('Downloading {0} ... ' -f ${env:SWIFT});                 Invoke-WebRequest -Uri ${env:SWIFT} -OutFile installer.exe;                     Write-Host '✓';                                                                 Write-Host -NoNewLine ('Verifying SHA256 ({0}) ... ' -f ${env:SWIFT_SHA256});     $Hash = Get-FileHash installer.exe -Algorithm sha256;                           if ($Hash.Hash -eq ${env:SWIFT_SHA256}) {                                         Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Hash.Hash);                                           exit 1;                                                                       }                                                                               Write-Host -NoNewLine 'Installing Swift ... ';                                  $Process =                                                                          Start-Process installer.exe -Wait -PassThru -NoNewWindow -ArgumentList @(            '/quiet',                                                                       '/norestart'                                                                  );                                                                         if ($Process.ExitCode -eq 0) {                                                    Write-Host '✓';                                                               } else {                                                                          Write-Host ('✘ ({0})' -f $Process.ExitCode);                                    exit 1;                                                                       }                                                                               Remove-Item -Force installer.exe;                                               Remove-Item -ErrorAction SilentlyContinue -Force -Recurse ${env:TEMP}\*
# Mon, 16 Nov 2026 20:28:16 GMT
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
	-	`sha256:d071965bafd2f556ae11dd5f2957370e3052318434ef0adbcff94818e1fa58a6`  
		Last Modified: Mon, 16 Nov 2026 20:28:39 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e882b8dba6f5e9ae8a56f97cbee47b919d324621c134e9a0957795faea29ee26`  
		Last Modified: Mon, 16 Nov 2026 20:28:38 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9dcfa476e00c50a5eccecb25da2b9843a9e1b71e22d921dfa97477ce792d66`  
		Last Modified: Mon, 16 Nov 2026 20:28:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446d074b64d0a03eef5d793b7ed7f60064592a1b4e0fa60a916872d18f9724fb`  
		Last Modified: Mon, 16 Nov 2026 20:28:36 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e642f4d63e6b4d29f684ba43fcc140f09ec949834f13fbcd1f60a853d3e395f4`  
		Last Modified: Mon, 16 Nov 2026 20:28:36 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d84792bf74c735bde0297211e644030f98adc50f18732d892ac4573fde8df79`  
		Last Modified: Mon, 16 Nov 2026 20:28:34 GMT  
		Size: 336.8 KB (336758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798540e74433376b2a5dd31698e90799c93aa8a976e749153b79f5141922182e`  
		Last Modified: Mon, 16 Nov 2026 20:28:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0726d126507b15e2d5d53fde18cce265e24f5f7d82cf03d774e3ff00d7d6189d`  
		Last Modified: Mon, 16 Nov 2026 20:28:30 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d099691f6ea973cf12d0ca47d72ad0d8c55b8dcabc6ddce25c622cbfb4a98db2`  
		Last Modified: Mon, 16 Nov 2026 20:29:29 GMT  
		Size: 163.9 MB (163904259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08aa871aa9a6680503bce56f7dbc37d57bb8e26e7f58a884144778df23c5e37f`  
		Last Modified: Mon, 16 Nov 2026 20:28:28 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1365d518cc7da1ce13fbe975acba4bea44442d6c01e9747876feab17960f3be`  
		Last Modified: Mon, 16 Nov 2026 20:28:28 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a36c58eb1f0c91bf8a5c15d7435d2c88547ec0acef3f8c9d993c8a1a766e95`  
		Last Modified: Mon, 16 Nov 2026 20:28:34 GMT  
		Size: 46.3 MB (46260689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f2014902d4dd158700d55fb65ed3c8dda785ba7dd216eaedcfbf52b2655db2`  
		Last Modified: Mon, 16 Nov 2026 20:28:27 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5332456d52d7b730b3f81bcb3270d5a59d6aecd372b4cb9a2f62014c2785653c`  
		Last Modified: Mon, 16 Nov 2026 20:28:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96ff79e3d64b8a358f37eb0fcf0350f3beaa727f6c895bdc2d076c3bc781649`  
		Last Modified: Mon, 16 Nov 2026 20:31:21 GMT  
		Size: 1.7 GB (1739289159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56d0056adda13273b64ca8eb9c5320b7b2f97cca9bf5bd0f75b2ecd06ba2ad`  
		Last Modified: Mon, 16 Nov 2026 20:28:25 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca08dc652f8152ccbe4aac1c72af60fd67c4f97544c16427418e1e0b127903f`  
		Last Modified: Mon, 16 Nov 2026 20:28:25 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f30bd73e40d8493963a4c90e3534f517dfffd953fcdb1f3456413d8ac43329d`  
		Last Modified: Mon, 16 Nov 2026 20:32:55 GMT  
		Size: 3.4 GB (3423139378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e4550b44d173f93650580437603c21bbec28b3f258f94aae486a6029b5f02c`  
		Last Modified: Mon, 16 Nov 2026 20:28:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
