## `hylang:python3.14-windowsservercore`

```console
$ docker pull hylang@sha256:b950b8300905066cdf5d43c2a6b3d48fc7473fb819f996b7e762c34529c7d355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `hylang:python3.14-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:3779990435f9109ee5ec2e320e1cf23d952d116d8a84133d7072f70e93309df7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2469431712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12c66d0580a3381fcc996ca82a3122689ac63016bbf37cfd9a491996075c2ad`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:13:06 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 13 Oct 2026 23:13:06 GMT
ENV PYTHON_VERSION=3.14.8
# Tue, 13 Oct 2026 23:13:07 GMT
ENV PYTHON_SHA256=759be887b96e736a3ca886daf8d575f18fcae1a09efab6902f42d59e8999f8ef
# Tue, 13 Oct 2026 23:13:45 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:45 GMT
CMD ["python"]
# Wed, 14 Oct 2026 00:20:37 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 00:20:37 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 00:21:08 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 00:21:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c59d009aba2f03c724440d870648ea3e3b174ad82fcbaf95d75fb47bbafe9d`  
		Last Modified: Tue, 13 Oct 2026 23:03:09 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f762ca40698fe2006ebc294b44edff2b2a6a19d2adc85c42eddba6cd828362e8`  
		Last Modified: Tue, 13 Oct 2026 23:13:49 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11290cca887105fe8f5d5b18872e7a3e2696c5d00bf45c70071ab167237bb50`  
		Last Modified: Tue, 13 Oct 2026 23:13:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf0452b77cce71936df889c7b2fd69739285a1daef5b92d330e2d60133aad79`  
		Last Modified: Tue, 13 Oct 2026 23:13:49 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd62909e31ee5e75808b2d61c93c36b8cf87857c3d37d3470369b6c95bf1ce8`  
		Last Modified: Tue, 13 Oct 2026 23:13:55 GMT  
		Size: 69.2 MB (69159137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803eab864ada84aa631b2dec006a6af340783946b5396c9782e76ca8b08c7aaf`  
		Last Modified: Tue, 13 Oct 2026 23:13:49 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e999cc425a9c9f63428e780706f5ab347887192318a9ad17b730074a5484c7`  
		Last Modified: Wed, 14 Oct 2026 00:21:13 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7356d3df2e9bfce8c44cb7e0087dd43fda1516ccc88c7978f71df7da17e43d1e`  
		Last Modified: Wed, 14 Oct 2026 00:21:13 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a2ae97aa8a39ff58433fab9e9b65cff041fa5fd07c58a110adbd625c171507`  
		Last Modified: Wed, 14 Oct 2026 00:21:14 GMT  
		Size: 8.3 MB (8267978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243a067023124bdd42bb9e46c0a92c408118896af4c07472983e68e24d2d0e14`  
		Last Modified: Wed, 14 Oct 2026 00:21:13 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.14-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hylang@sha256:11345a59a8f32f4e09e6b8023965bfdb94b098db736dc0100490fbcae5ccbb6b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2303356263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16aef1ff47f3c9d0d3e8eadd68766a792646d889bb845692c0dd80c40399936`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:15:16 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 13 Oct 2026 23:15:17 GMT
ENV PYTHON_VERSION=3.14.8
# Tue, 13 Oct 2026 23:15:17 GMT
ENV PYTHON_SHA256=759be887b96e736a3ca886daf8d575f18fcae1a09efab6902f42d59e8999f8ef
# Tue, 13 Oct 2026 23:15:49 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:15:50 GMT
CMD ["python"]
# Wed, 14 Oct 2026 00:29:24 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 00:29:24 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 00:29:49 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 00:29:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2762a22651a5331c79986ac315a5dd41c5566c65cb05b23e4c49f5c67ee835b7`  
		Last Modified: Tue, 13 Oct 2026 23:14:54 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99cee8266d96ae9f66b4a0a1d1c2479e6d0112e561d1999691e04255c163285`  
		Last Modified: Tue, 13 Oct 2026 23:15:55 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5190b906983aa5128912228cb8dff9d3ed25d28505ee9438a7d28d9da4d96f1c`  
		Last Modified: Tue, 13 Oct 2026 23:15:55 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a180b3ad58d211fff047ae015e01d74a884226f0119ff3f31412e01fe38ed2fb`  
		Last Modified: Tue, 13 Oct 2026 23:15:55 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae581e6e9c41de6ceb4e14f1b8d1ca47e96722a5657062a719aea4c4ef0e374f`  
		Last Modified: Tue, 13 Oct 2026 23:16:00 GMT  
		Size: 69.0 MB (68983028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fab7d6d9e9be790d6754b9565671cb33ca13f695fb132e162840c62fdceae7c`  
		Last Modified: Tue, 13 Oct 2026 23:15:55 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e58a379fb9b4baab0f5389727b81d25d2a645a718038831a3bb383017d524e6`  
		Last Modified: Wed, 14 Oct 2026 00:29:54 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3da189640e0baa3246afbb09947dea3594176fa27b481d1fe3d440fe25ee429`  
		Last Modified: Wed, 14 Oct 2026 00:29:54 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a5ac3879326916ce9df7d152fba0ff1189d15f34736bbd6849a1e63594b692`  
		Last Modified: Wed, 14 Oct 2026 00:29:55 GMT  
		Size: 8.1 MB (8077265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0497d952365df97240594a5e904a48ff8ecdc63e1bef8116d5743af36372c694`  
		Last Modified: Wed, 14 Oct 2026 00:29:54 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
