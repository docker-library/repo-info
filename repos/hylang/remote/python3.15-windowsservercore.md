## `hylang:python3.15-windowsservercore`

```console
$ docker pull hylang@sha256:a0c7d7e26325513f476037b2ce6e746bfeaa81d7426b2a70c75ec22c57e9b865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `hylang:python3.15-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull hylang@sha256:e62a56f7a35dd6c07f15f9e9d1a1b022aa7d3da811531ad982b3cadf19d6eca0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2472493004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314f8be5af9dc8838e13d84d109e42f0fbf782e16118063769c443240f608918`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:48:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:00:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 27 Oct 2026 18:00:51 GMT
ENV PYTHON_VERSION=3.15.2
# Tue, 27 Oct 2026 18:00:51 GMT
ENV PYTHON_SHA256=06e225a228191b0f4d1dcf6905fbb21bf9f6970d13a2ec63137ab9bee76f15aa
# Tue, 27 Oct 2026 18:01:27 GMT
RUN $url = 'https://www.python.org/ftp/python/3.15.2/python-3.15.2-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:01:27 GMT
CMD ["python"]
# Tue, 27 Oct 2026 18:41:51 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 18:41:51 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 18:42:20 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 18:42:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80ed5c001546c8ba77b5502c91e1c6c1d3895b6c480fa92fbab4a6d7004983e`  
		Last Modified: Tue, 27 Oct 2026 17:49:50 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da332c54f34758a401877937eba96531b7c73b47cdd7725d93a18fe3c0c78e2`  
		Last Modified: Tue, 27 Oct 2026 18:01:32 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5839515ddad185cc717b5b1d380bc2ba6f7fc0d9ec64fbe5254f789da660d47`  
		Last Modified: Tue, 27 Oct 2026 18:01:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41adf42478e93adc0fab8ee6b7c6ab9a99de26098bbee83a34c3885867794e3`  
		Last Modified: Tue, 27 Oct 2026 18:01:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838b36c9c593bc6d1fe59ec03d6b32b859fa6c10f4e707f935103728b48bcb5c`  
		Last Modified: Tue, 27 Oct 2026 18:01:37 GMT  
		Size: 72.2 MB (72224019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bb911cedd6bd1e986c35ce444648cc93e560ec6df5e2f5116029e7e509e6b8`  
		Last Modified: Tue, 27 Oct 2026 18:01:32 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbca2f41d8d73b0a726cd7cf97e8c997d416d00394321e07925441f2ea9a54e8`  
		Last Modified: Tue, 27 Oct 2026 18:42:25 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b8764aa0cd285168b36c3f1f6e6255fadd4616c728fbe32764735d033f568a`  
		Last Modified: Tue, 27 Oct 2026 18:42:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2012ebc09def389027168c7feb23b31688c4ee93f09a1390c2e975eb8c19aed`  
		Last Modified: Tue, 27 Oct 2026 18:42:26 GMT  
		Size: 8.2 MB (8209673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4804e5b6133ba87160fa3517a7aff96b147ac2c9f728ae456aa42529ee7ca942`  
		Last Modified: Tue, 27 Oct 2026 18:42:25 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.15-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull hylang@sha256:63aaf66f8f7ff515d558dd078f26586576040961ef2ad5de1d80bcb9fcf02f37
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2307364514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208cbdbaeb30940b7c03d014ef055b3b52a4b35e8874b71f419e0acb5d2e4ffb`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:51:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:10:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 27 Oct 2026 18:10:29 GMT
ENV PYTHON_VERSION=3.15.2
# Tue, 27 Oct 2026 18:10:29 GMT
ENV PYTHON_SHA256=06e225a228191b0f4d1dcf6905fbb21bf9f6970d13a2ec63137ab9bee76f15aa
# Tue, 27 Oct 2026 18:11:03 GMT
RUN $url = 'https://www.python.org/ftp/python/3.15.2/python-3.15.2-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:11:04 GMT
CMD ["python"]
# Tue, 27 Oct 2026 19:19:22 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 19:19:23 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 19:19:58 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 19:19:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c33846e131d5ffb4ab39bd168ff5ac88a294c9293938da526357a3bb3f2169a`  
		Last Modified: Tue, 27 Oct 2026 17:52:46 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4001955560d17755de8af49523488c0ec855de7b023ac3ba958e3d9416e76ac`  
		Last Modified: Tue, 27 Oct 2026 18:11:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e4ef09d1ff807ce3e317ba9a62eed2f80b9fe50df74ec27cad4a2bde0bc409`  
		Last Modified: Tue, 27 Oct 2026 18:11:09 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a1170ecda187b1bba0931e0c491b5192a4fc01c9aec0e4cacf7214fd10c4b8`  
		Last Modified: Tue, 27 Oct 2026 18:11:08 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3481e084a6ca0a1119c6c07974e40d06c95da6925e94357b6c605184aa4ec6d`  
		Last Modified: Tue, 27 Oct 2026 18:11:14 GMT  
		Size: 72.2 MB (72154932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309c3adadd463267f02a05d53e5128c4998fce874ff6082edb4a8cf32ce907e5`  
		Last Modified: Tue, 27 Oct 2026 18:11:08 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0ca997f74cdbddb81f672193f8abc5945c16876edf3187c28084267c63c9bd`  
		Last Modified: Tue, 27 Oct 2026 19:20:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5a0a6da59c1b0d79e434eda954b636fd7d8f51d29d5679f4429dfc2fccb81d`  
		Last Modified: Tue, 27 Oct 2026 19:20:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552626a2dca7c260a5db9dca1a2342c2b340acb8f4fcb8476c51aefad24476`  
		Last Modified: Tue, 27 Oct 2026 19:20:04 GMT  
		Size: 8.1 MB (8142917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc192a4c94ec5ce52fd6adcadbbb23c4939e38e56afc843eef824c055ac18da`  
		Last Modified: Tue, 27 Oct 2026 19:20:03 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
