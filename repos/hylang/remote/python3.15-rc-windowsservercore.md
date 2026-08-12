## `hylang:python3.15-rc-windowsservercore`

```console
$ docker pull hylang@sha256:0bc53cb367608ee20050d151b630a9f62c91e6357a163ee63a7b74dc41d7df27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `hylang:python3.15-rc-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull hylang@sha256:aef3127d18e3f28a9e7cc072a0f53a9cbd8afe2da240c09731b8e452439d5d37
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2521201097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1bd94562597056edfe9f6cc4a28c21d9bb3c93cfb8e1e5e7dbb1f297c296d9`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:49:25 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Aug 2026 17:49:26 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Wed, 12 Aug 2026 17:49:26 GMT
ENV PYTHON_SHA256=be7efa348927146eec51e3f8fd8381a92882ff6e4275c7a2fe003624719e6e5e
# Wed, 12 Aug 2026 17:50:02 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:50:02 GMT
CMD ["python"]
# Wed, 12 Aug 2026 18:23:45 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 18:23:46 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 18:24:35 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 18:24:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45c3fa4e19fb5e29c4ec3f18616552d3f4d5c6452158d23ed3c31746089abe4`  
		Last Modified: Wed, 12 Aug 2026 17:35:38 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d4e937973fc16f9409d0354fe4c70bbe6af492c70f30dce4a60b305ab8e23a`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d77f9ed2d9ec06a9863224b8227a5a40191b067172175b761eb09dd08d85e40`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c437a858f4c108ca45a084e5164ffbab63aac695cd42d883cbf5ea713d2a18`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a415b41e8f09fce4635fedf4012e2d6fbdfed8e2f903fc54dac1793df7e64a`  
		Last Modified: Wed, 12 Aug 2026 17:50:12 GMT  
		Size: 72.2 MB (72155849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd39ccb5dedeef4a196e32fa40ebe243933f4ba7c38e8ec95f6b19d90aa6663`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cf5193c99e17837d7418181cf37bdfc4289c60a526ed03010a361923eb968f`  
		Last Modified: Wed, 12 Aug 2026 18:24:40 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f1616882d9d23ff6995d7660e05bf0a88c60998c6a2831792c233b61b9bd7d`  
		Last Modified: Wed, 12 Aug 2026 18:24:40 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385a1865123d9bc01f2b35d0fdd4d1fe28a50976a06454373f127728d609b9b8`  
		Last Modified: Wed, 12 Aug 2026 18:24:41 GMT  
		Size: 8.2 MB (8249430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a779b29008b03d2de7032be9d22a0a5a8c4f97160b97a8c0e4a70dbeebab77a1`  
		Last Modified: Wed, 12 Aug 2026 18:24:40 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.15-rc-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull hylang@sha256:af22ea3600672f078faa5b296a71f9d4504b3500192da4bdf0646c50ba0b52af
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2264132810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cab295d37c3c226c1a6475a7dfd345db60351c69bdcd661e92b75987188f24`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:50:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:26:53 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Aug 2026 18:26:53 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Wed, 12 Aug 2026 18:26:54 GMT
ENV PYTHON_SHA256=be7efa348927146eec51e3f8fd8381a92882ff6e4275c7a2fe003624719e6e5e
# Wed, 12 Aug 2026 18:27:34 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 18:27:35 GMT
CMD ["python"]
# Wed, 12 Aug 2026 19:18:28 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 19:18:29 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 19:19:12 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 19:19:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e05ffa1d42945055559d13c674b9b9745fe283b847111a7d27cac84f7749db`  
		Last Modified: Wed, 12 Aug 2026 17:53:15 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215e0377d5ea58d8e686915017957e560dd444eb7af0028664d54dcb6df06390`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9ce087705da946e94ae5c562249e0b10e0ef5036330e86128eaa17b6f10750`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b6919a5e7bae6bd2423695b556f70910e169463d7c73c72a91c317a7d66c25`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26896efe3431aa58ed62f532a24c80b91692d1d40c56d4dba193dbc69c625e50`  
		Last Modified: Wed, 12 Aug 2026 18:27:45 GMT  
		Size: 72.0 MB (72019278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74c77d52a77408c9339309ee461cd44743b1eebf7b3f04045c511bfc8fe64b3`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db6651de429a9429cf4db0fcbaef54c77e2563d23ad3921249d0a3530cd7fc9`  
		Last Modified: Wed, 12 Aug 2026 19:19:16 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ed6778477d89de3fd16995a08ddf058ea83014ffd6881244bd2484b3ddaffe`  
		Last Modified: Wed, 12 Aug 2026 19:19:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326e924f92126df25d3b4563529516d773666eae59c769c85e5db6bb5cf60b5`  
		Last Modified: Wed, 12 Aug 2026 19:19:17 GMT  
		Size: 8.1 MB (8105630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ea3385f9dd831635a06749b35ccbb3660a4713f21ca2fddd81503ade2449c3`  
		Last Modified: Wed, 12 Aug 2026 19:19:16 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
