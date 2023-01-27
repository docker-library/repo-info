## `hylang:pypy3.8-windowsservercore-1809`

```console
$ docker pull hylang@sha256:e28d1c2544cec3b2ba17e860bfde8a163d8eda4515121f871b10e4a84cfda3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `hylang:pypy3.8-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull hylang@sha256:9a6eef1ce3b6ff2570e2407bcccd1d4ce902a2a353b4d1400f60896a9c1f7fe9
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1758662460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4670be5bdee5c3fe4b3e8ee7bbde5b11e1b7c0bdd6f35c9f33083e828cf9ded4`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 07:35:05 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:35:43 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:35:44 GMT
ENV PYPY_VERSION=7.3.11
# Thu, 12 Jan 2023 07:41:42 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.8-v7.3.11-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '0f46fb6df32941ea016f77cfd7e9b426d5ac25a2af2453414df66103941c8435'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.8-v7.3.11-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy3 --version") ...'; 	pypy3 --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:41:44 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/3843bff3a0a61da5b63ea0b7d34794c5c51a2f11/get-pip.py
# Thu, 12 Jan 2023 07:41:45 GMT
ENV PYTHON_GET_PIP_SHA256=95c5ee602b2f3cc50ae053d716c3c89bea62c58568f64d7d25924d399b2d5218
# Thu, 12 Jan 2023 07:43:11 GMT
RUN Write-Host ('Downloading get-pip.py ({0}) ...' -f $env:PYTHON_GET_PIP_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:PYTHON_GET_PIP_URL -OutFile 'get-pip.py'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_GET_PIP_SHA256); 	if ((Get-FileHash 'get-pip.py' -Algorithm sha256).Hash -ne $env:PYTHON_GET_PIP_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		$pipVersion = & pypy3 -c 'import ensurepip; print(ensurepip._PIP_VERSION)'; 	$setuptoolsVersion = & pypy3 -c 'import ensurepip; print(ensurepip._SETUPTOOLS_VERSION)'; 		Write-Host ('Installing "pip == {0}", "setuptools == {1}" ...' -f $pipVersion, $setuptoolsVersion); 	pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip == {0}' -f $pipVersion) 		('setuptools == {0}' -f $setuptoolsVersion) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:43:12 GMT
CMD ["pypy3"]
# Thu, 12 Jan 2023 08:58:14 GMT
ENV HY_VERSION=0.25.0
# Thu, 12 Jan 2023 08:58:15 GMT
ENV HYRULE_VERSION=0.2.1
# Thu, 12 Jan 2023 09:00:31 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Thu, 12 Jan 2023 09:00:32 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31da2f54a33a71f225ee6d9c2903100380650bfb87243e753ab189b16a3b1a1`  
		Last Modified: Thu, 12 Jan 2023 08:32:36 GMT  
		Size: 364.6 KB (364564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a762462b9c02d170bd93f742eb949d2af6da43c3f64529a7ebef274a2ce0ed7f`  
		Last Modified: Thu, 12 Jan 2023 08:32:38 GMT  
		Size: 15.5 MB (15497383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab2e1ab0fde4783e04474d94c1b21218b3c2526171f7f3f9bf8475b57b6fcbb`  
		Last Modified: Thu, 12 Jan 2023 08:32:34 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005997e6e1100c4e1e1547193b22a2f5982e92e9b46b9478bce7987119bbdca8`  
		Last Modified: Thu, 12 Jan 2023 08:33:37 GMT  
		Size: 26.4 MB (26363128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f14effb9889e7d7a4b3a40a4ea298dbb05b661edbecb83cb33771a32ed1b8a0`  
		Last Modified: Thu, 12 Jan 2023 08:33:29 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78da6785f0ada8cdd9d7de315eac357c8a0109886ad9acc706784f0530b8bf6c`  
		Last Modified: Thu, 12 Jan 2023 08:33:29 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b53e58a23ae2ce7424f8c0fe75c6e6d96fedf607ed953aa31cb7ed4300bf9e`  
		Last Modified: Thu, 12 Jan 2023 08:33:31 GMT  
		Size: 3.5 MB (3521561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1d8302e8598e8e4b33d99ad43d3fb1fa9b60bae8675ee4e7f75b00848b2a78`  
		Last Modified: Thu, 12 Jan 2023 08:33:29 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab740e50a9a4cc8e659255ab39e7cb15b8d06a74ea64a8e4d515ced005b11df1`  
		Last Modified: Thu, 12 Jan 2023 09:02:22 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be02440ffc567912f2fc0eb8a1587f04ff7c318fbcc6dc9de4900d89ab2b3e5b`  
		Last Modified: Thu, 12 Jan 2023 09:02:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34ec4a9eaefa83640e65013f4951f416905db1be3c31d779776fa47fe4a5973`  
		Last Modified: Thu, 12 Jan 2023 09:02:24 GMT  
		Size: 5.0 MB (4961204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5aa0f6e85e22f15fc6622a9e13be112d303ba45f880dd3269aeb29e8b2a352`  
		Last Modified: Thu, 12 Jan 2023 09:02:21 GMT  
		Size: 1.4 KB (1403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
