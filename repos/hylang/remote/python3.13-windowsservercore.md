## `hylang:python3.13-windowsservercore`

```console
$ docker pull hylang@sha256:3a6265614939d726e837559be4518c7c65c41821e824fb02d6a9e81eb2f3bfbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `hylang:python3.13-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:d8d2b34b1858529af77f51dfd08f2ab8c629c97c20746654364c9a65a4214d68
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422846432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d80a043712d9c212f78fe18d9f37057d133aa92beabb2c1cb8ab8928ca079c4`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:06:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:15:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 15 Jul 2026 23:16:27 GMT
ENV PYTHON_VERSION=3.13.14
# Wed, 15 Jul 2026 23:16:28 GMT
ENV PYTHON_SHA256=c54d9b9bbb8a36e6489363ddd01139707fd781d72f1f9e90c7ec65d0061368e0
# Wed, 15 Jul 2026 23:17:11 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:17:12 GMT
CMD ["python"]
# Wed, 05 Aug 2026 15:59:49 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:59:50 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:01:14 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 16:01:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d231fcb041ccaa039f191e750d8c8a4901b0e03c09a1f1d13bd8d172e0d286e6`  
		Last Modified: Wed, 15 Jul 2026 23:08:19 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ee86154a429ba234db8d902c37ea35f062db1abadaa885145dc53dccf25bde`  
		Last Modified: Wed, 15 Jul 2026 23:16:09 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b6538e3a58adbb8b646907d2bd68aedb3599b814b220764d91a7829b2f1bdd`  
		Last Modified: Wed, 15 Jul 2026 23:17:18 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f12d4dc2dd43d5e3dc9844a5133dc22d9bfdb2f5f8acec214cafd3e3bfc261`  
		Last Modified: Wed, 15 Jul 2026 23:17:18 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b902f4ea0335f77ffdbe2b70d2d22e3f42af31b654daa757d9896059be0640`  
		Last Modified: Wed, 15 Jul 2026 23:17:24 GMT  
		Size: 59.3 MB (59301896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8c56e9237fb5571b7688ebf664d42b44cf035832f71437e7862917a8fe1887`  
		Last Modified: Wed, 15 Jul 2026 23:17:18 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee4d11ddd8795a97028cb366933be57d4a24244979afc4b0b35af45547bc22`  
		Last Modified: Wed, 05 Aug 2026 16:01:20 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8a2d8689b35e77c8a6c5f99cd5cbd8a9c0a8585846bdad5108e0a2d015c298`  
		Last Modified: Wed, 05 Aug 2026 16:01:20 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992362caad958f563f76729987cb5783d6147dbcfbd40e83a56e417aafdddb39`  
		Last Modified: Wed, 05 Aug 2026 16:01:22 GMT  
		Size: 8.5 MB (8525961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe27989a4296d4c1925414143944cd9300aaf9b86822b6c8493602fc185c68c`  
		Last Modified: Wed, 05 Aug 2026 16:01:20 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.13-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:8d56e5a60205960364d9b28d419944cddf24e5263d6bbb7d836d8ecd81aff450
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2225023416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d9c8ea94b4d84a4a452783e3d32fda2cc19cfca47cf820df81ed94d416b09e4`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:05:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:30:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 15 Jul 2026 23:30:38 GMT
ENV PYTHON_VERSION=3.13.14
# Wed, 15 Jul 2026 23:30:39 GMT
ENV PYTHON_SHA256=c54d9b9bbb8a36e6489363ddd01139707fd781d72f1f9e90c7ec65d0061368e0
# Wed, 15 Jul 2026 23:31:13 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:31:14 GMT
CMD ["python"]
# Wed, 05 Aug 2026 16:03:03 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:03:04 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:03:40 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 16:03:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcdf0d30539dd8057458012ecb38d8b289902f8ebed3f36a067d7a932499d490`  
		Last Modified: Wed, 15 Jul 2026 23:09:52 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e285ead0e139dfedce9f482891d03aafa93aa80a96f22344d6ff7c1da6921`  
		Last Modified: Wed, 15 Jul 2026 23:31:17 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e21063d49774b6e7ef76bdb84488ea3404bfee9c38aa83f48e04896fb53ec8a`  
		Last Modified: Wed, 15 Jul 2026 23:31:17 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f47efd22a8c76ddc5d00287f01aca82d76bf8050b01d36b3489bd5c80e8c512`  
		Last Modified: Wed, 15 Jul 2026 23:31:17 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82510f2edb402302d3bc76d840007585a765883afee3051e695e1a00bbe03393`  
		Last Modified: Wed, 15 Jul 2026 23:31:22 GMT  
		Size: 59.2 MB (59181680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0395bc16e86afdd2d34a58d3a20209f5400130a03cad43df68dc81d6fb78d1`  
		Last Modified: Wed, 15 Jul 2026 23:31:18 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae976e51ca2ee88d59b741e4d5f4d52515953964e2002595578fd44da21fce31`  
		Last Modified: Wed, 05 Aug 2026 16:03:45 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4f21be911ae915002c129cb5aa71317bfc2b77a1368b908107140ee0c619a3`  
		Last Modified: Wed, 05 Aug 2026 16:03:45 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90730cf44c4362bc7aa71eb1e6dd42753ca50af762a90e6524995c1a2a24e0d3`  
		Last Modified: Wed, 05 Aug 2026 16:03:47 GMT  
		Size: 8.3 MB (8278107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8feb2febb4635f3cdff6a608370722fc602601a7b812d9443a3fa1bb3f539522`  
		Last Modified: Wed, 05 Aug 2026 16:03:45 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
