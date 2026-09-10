## `hylang:pypy3.11-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:5d4ef991aa16be591c41e032255c8b26a9fbad960ec4573597e328c993cb9ea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `hylang:pypy3.11-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hylang@sha256:273f44ce2184ed1d56c73a74ee14e283201beee7f0e0f8bf5b31ef8fe62df60a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512369787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9effae25e815a2f28ca9e9a7445eae9f277b426dd8d98e0fcaaf0c8770e15320`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:48:13 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:22 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:24 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 09 Sep 2026 22:49:00 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v7.3.23-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '948b8ea58dea5b9917210fe4afd242c788fbfaba1c3f1a25e696a404f703389a'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v7.3.23-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:49:00 GMT
CMD ["pypy"]
# Wed, 09 Sep 2026 23:26:45 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:26:46 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:27:50 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:27:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004d914ab6833353e14ffe1eb09303d6d528a2cf497409ce27852810def45f79`  
		Last Modified: Wed, 09 Sep 2026 22:34:24 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d3ff06001e0f498b8c7d2918c0620c33508c4a65a278df8f90c8eca4c3fa7`  
		Last Modified: Wed, 09 Sep 2026 22:49:05 GMT  
		Size: 354.7 KB (354672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a934257cde63158f3ad159f32adc48e31b4d25ed258b57fac6d492bf28ad37`  
		Last Modified: Wed, 09 Sep 2026 22:49:09 GMT  
		Size: 15.5 MB (15537182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526ecae5d322882606b17407f01a3e383e4dc480b830afe547fdcdf948acdbdb`  
		Last Modified: Wed, 09 Sep 2026 22:49:05 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4435b4fb0841593ab0a44de5d9620a0943e2a79880f4255ee44d0f9686c9dd52`  
		Last Modified: Wed, 09 Sep 2026 22:49:09 GMT  
		Size: 30.9 MB (30875090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af491d6b6244e953d3459b28b246b7b6eebd38805c786a9f4038e95e9eb85c3b`  
		Last Modified: Wed, 09 Sep 2026 22:49:05 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56381d988260f32c46af4b6daa37413e308b0aaf8e9cb08de77e0dbe1a78bf87`  
		Last Modified: Wed, 09 Sep 2026 23:27:55 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c6ea3ca572e7b583ca57068d007b42e2b91b434e65f93ddd8ec61100403ad0`  
		Last Modified: Wed, 09 Sep 2026 23:27:55 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353e1fe89294ff215162481e8b33036f84d60cd47726ab632faeac3360217bf3`  
		Last Modified: Wed, 09 Sep 2026 23:27:56 GMT  
		Size: 8.0 MB (7965452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1d03c63ded741c25519ece3869aee9b1689461ce046cc060648a383b98b51a`  
		Last Modified: Wed, 09 Sep 2026 23:27:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
