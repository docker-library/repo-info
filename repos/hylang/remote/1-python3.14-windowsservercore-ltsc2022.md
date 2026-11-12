## `hylang:1-python3.14-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:0cde658f184c0eec05de9a10c905eb9b07013cccc52d0efb2b368b1df491e25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `hylang:1-python3.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull hylang@sha256:d3aea2f89f3054c7d92df6a37e3aa557cea8245eec3c516cb95d3d3ec1c735b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2323699928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c042bbc6ad1bc82d68ab2a8ee0e3f25f02be0736e1d079aa3822e495d2f9218`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 22:16:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:16:10 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 11 Nov 2026 22:16:11 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 11 Nov 2026 22:16:12 GMT
ENV PYTHON_SHA256=92480239264744fe0386a1bd8275786fefa126e3129e56a68e22b52c73329965
# Wed, 11 Nov 2026 22:17:21 GMT
RUN $url = 'https://www.python.org/ftp/python/3.14.10/python-3.14.10-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:17:22 GMT
CMD ["python"]
# Wed, 11 Nov 2026 22:59:14 GMT
ENV HY_VERSION=1.3.1
# Wed, 11 Nov 2026 22:59:14 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 11 Nov 2026 22:59:38 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 11 Nov 2026 22:59:38 GMT
CMD ["hy"]
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
	-	`sha256:47ac32598ab3b39188c78577c3e0e9204d8f4af135fe61041baa3693e7f20d14`  
		Last Modified: Wed, 11 Nov 2026 22:17:28 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5737bedca70f34ffbea2d500300a055fd4dc0fda493f505cc5426126b3ed70f`  
		Last Modified: Wed, 11 Nov 2026 22:17:27 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32603e5a7453289ad014d6ff123327599ec394c0daabc02104edef0feb5a519`  
		Last Modified: Wed, 11 Nov 2026 22:17:27 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247fed22f14380c755fd65cd237a6238d9f03b093cc9e85fb76276fd72a158d4`  
		Last Modified: Wed, 11 Nov 2026 22:17:26 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27053db8571e2e71713abc84eb7d4086b8468619033ac858c5e343b36b1e30c3`  
		Last Modified: Wed, 11 Nov 2026 22:17:32 GMT  
		Size: 69.2 MB (69162720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8ad095ef8faf25402b49bc0a608817d0494e949ea3c5cf03efe388221864ea`  
		Last Modified: Wed, 11 Nov 2026 22:17:27 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2724eceb5dbc215bf0f8b6ea43b4a91f8f79111794347de0d9b8f9fd79c598d6`  
		Last Modified: Wed, 11 Nov 2026 22:59:42 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5641873b1e2006276229228ec52dad72cf3a423e6a6098c73733028954c121`  
		Last Modified: Wed, 11 Nov 2026 22:59:42 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c81378492ff589f6a0c304cec8b7dfca02b69e4d1007034ea24a9a202eacb7`  
		Last Modified: Wed, 11 Nov 2026 22:59:43 GMT  
		Size: 8.2 MB (8178910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d542f51979a52045a1c2bc654be3c0da631469478701150f617b9f82b605aa`  
		Last Modified: Wed, 11 Nov 2026 22:59:42 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
