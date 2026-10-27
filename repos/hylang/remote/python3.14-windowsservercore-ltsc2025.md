## `hylang:python3.14-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:fa279951d230aade0f624c30b44bafc24e4fe8127695b38de0cb000d37e4e962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `hylang:python3.14-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull hylang@sha256:9c686615e885eec0c7b1e6617c17af2a12b8826582a1b06c308b0e83fccdce6d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2469559656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c7a5ec349723115626d5234efec50c3621965ae1c5762cae0dc11663a67f24`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:01:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 27 Oct 2026 18:01:41 GMT
ENV PYTHON_VERSION=3.14.10
# Tue, 27 Oct 2026 18:01:42 GMT
ENV PYTHON_SHA256=92480239264744fe0386a1bd8275786fefa126e3129e56a68e22b52c73329965
# Tue, 27 Oct 2026 18:02:14 GMT
RUN $url = 'https://www.python.org/ftp/python/3.14.10/python-3.14.10-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:02:14 GMT
CMD ["python"]
# Tue, 27 Oct 2026 18:41:57 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 18:41:57 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 18:42:26 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 18:42:26 GMT
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
	-	`sha256:deac8411208c7be4087f6269cdff958ca4539894d5540fbed510906417fdf4c5`  
		Last Modified: Tue, 27 Oct 2026 17:50:06 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543f0c2995cb3d36beaeaef1c0fc2840351c18c99ac051282767ec3cf7cf7bd`  
		Last Modified: Tue, 27 Oct 2026 18:02:20 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d0b3f24cc3b961ab60624d618e3f5ff4eeef981001c8a855752c74b1b7b422`  
		Last Modified: Tue, 27 Oct 2026 18:02:20 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf354a74fd063b43f2e01d8550ee392a5143228a245009ee3cd17ccb8915711`  
		Last Modified: Tue, 27 Oct 2026 18:02:20 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abce4fcc7324404b7eb564c3d5cfc683a786bf6df5df74872560f79ce9c767bf`  
		Last Modified: Tue, 27 Oct 2026 18:02:25 GMT  
		Size: 69.2 MB (69225497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed46cdecd53b47c9e967fdba9f4d4655384ed848efdb36895bc564bdab6eac2`  
		Last Modified: Tue, 27 Oct 2026 18:02:20 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a428f1f68249e5d97df35ad7201f9d06e1c09f1518e4b1b93e508afc945a5e62`  
		Last Modified: Tue, 27 Oct 2026 18:42:30 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f513a3ebfcbb32f8f3c0b72ddbeb4ae2d8eb143846901f58d8a866739fefb9`  
		Last Modified: Tue, 27 Oct 2026 18:42:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c74eb58a1f96788b5302ff98301ef946cc40ed6f924429cc4e06c98e9808cec`  
		Last Modified: Tue, 27 Oct 2026 18:42:32 GMT  
		Size: 8.3 MB (8274803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c231d4681c0f7dc0725b33850372d06ac12837bfc1394d8a44ee2ec91f4641`  
		Last Modified: Tue, 27 Oct 2026 18:42:30 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
