## `hylang:python3.15-rc-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:d552ed3a5b6b029200634b61800ef1dce3b56082c873051dea211cda5cb0e95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `hylang:python3.15-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:d7cd88dadf42c70a2240bf01c14f77db7e31c28a3420cbb0d6ef9e97b6a3240e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2435713999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ad6e2572e7f3b44440eb58d30b51f6354c4e12d6003703787a1f186425ef39`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 05 Aug 2026 16:15:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 05 Aug 2026 16:15:44 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Aug 2026 16:15:45 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Wed, 05 Aug 2026 16:15:46 GMT
ENV PYTHON_SHA256=be7efa348927146eec51e3f8fd8381a92882ff6e4275c7a2fe003624719e6e5e
# Wed, 05 Aug 2026 16:16:59 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 05 Aug 2026 16:17:00 GMT
CMD ["python"]
# Wed, 05 Aug 2026 17:22:59 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 17:23:00 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 17:24:19 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 17:24:20 GMT
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
	-	`sha256:1d20d1a3937c6d173c57f0aea3f9c741aba49d68d9b74430d77f04052ed536ed`  
		Last Modified: Wed, 05 Aug 2026 16:17:06 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d056d0fd9488d8c505678a152a7e11f6d07f48a5dc1e3916502ab9368e7e5`  
		Last Modified: Wed, 05 Aug 2026 16:17:05 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf490bdc05b9642c9f652bf5733dfd0c401053dff95147c03ee20cdfb4f3c0b`  
		Last Modified: Wed, 05 Aug 2026 16:17:05 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d80c17d30914c1e22d3c5a5f830d92dfb7474df3cefd12740337f683c7be92`  
		Last Modified: Wed, 05 Aug 2026 16:17:05 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8fa67ff0257718bed17cc612d60993e19669a41a3c801a9c26fa373fbd122b`  
		Last Modified: Wed, 05 Aug 2026 16:17:10 GMT  
		Size: 72.2 MB (72230605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f6320bea5b5051b82fe7e37ae09e7b0fd8398af382dcf6bf0df9e45ca90d73`  
		Last Modified: Wed, 05 Aug 2026 16:17:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8df0962b3aa9a8a0781a635dc097277f60fcffc56f6fc4d7128f593ae1fdcd`  
		Last Modified: Wed, 05 Aug 2026 17:24:24 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d696996dba37e7f3b013f32a4ae0d23b8c18650ccaa0e00ce105a7e2fb435cf7`  
		Last Modified: Wed, 05 Aug 2026 17:24:24 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b553f31f61e2e7d99d5af718dc36c4bf86171be9ea8083fe7dc2b20756b59068`  
		Last Modified: Wed, 05 Aug 2026 17:24:25 GMT  
		Size: 8.5 MB (8464887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3ef6410dc2f326bb8b90c7ac599405fde4c0cc166c6b7d7090a056f6c0dbc7`  
		Last Modified: Wed, 05 Aug 2026 17:24:24 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
