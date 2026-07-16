## `hylang:1-python3.14-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:3c3224ae1c670751d91e7b6d7353c24b2d3a8cb2725fedbe42004b8c0d8654a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `hylang:1-python3.14-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:8d77955b86e0a85084eda931dc5755ca468a8c84dd75a02b5dd649aa68c699b4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2426190184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c89a6bde6196cf4daf5f98a9ae40cdcbae1bd1cea7357752fcbbb4da7ce9b66`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:15:53 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 15 Jul 2026 23:15:54 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 15 Jul 2026 23:15:54 GMT
ENV PYTHON_SHA256=14b3e9a710a3fcf0bd9b55ab6b60412bd91227563f813fc49040cabc0209e0bd
# Wed, 15 Jul 2026 23:16:44 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:16:46 GMT
CMD ["python"]
# Wed, 15 Jul 2026 23:57:37 GMT
ENV HY_VERSION=1.3.0
# Wed, 15 Jul 2026 23:57:38 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 15 Jul 2026 23:58:35 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 15 Jul 2026 23:58:36 GMT
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
	-	`sha256:49429e1dc770c1694ee6f0486cb3444a1a9026b0e383e0626e5a7744dc98d2b9`  
		Last Modified: Wed, 15 Jul 2026 23:06:42 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f161f83095d1771763c847880241e3b061f7f8c3c5bbeae4381d6a455f329b1e`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3540fafe7b4bc1cb5bdc47352117262fcd8dc1679ad4cc89deda048b39f607dc`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f86bfc1a26bd8ccb1946f4652fa73ba77174d4f729312022bfceea03b732085`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c937acb222e0d9f37501e4f53961491f4907a3d92ba7ff5a889b69dcef05cb02`  
		Last Modified: Wed, 15 Jul 2026 23:16:58 GMT  
		Size: 62.7 MB (62672149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771f07ec8e58cd8386bbac4e9259682e1167870967fe4ad2def474299c283352`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ba3c482fbf45be3b44289e6fb9b093da0a46f1770b7a5614c50f9c8c04b213`  
		Last Modified: Wed, 15 Jul 2026 23:58:40 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265bc8d31d064a2dbf37d5f719569a0dfb8b0f6f44efb45563882c7706262daf`  
		Last Modified: Wed, 15 Jul 2026 23:58:40 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1b725aaff7fd82fe31d676b5fb9fc16eecce04b2d1301fc50398196ed22d47`  
		Last Modified: Wed, 15 Jul 2026 23:58:41 GMT  
		Size: 8.5 MB (8499511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70d49807666572c0068c839983e97420578a562deaf8a4441e5060231ba9e2`  
		Last Modified: Wed, 15 Jul 2026 23:58:40 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
