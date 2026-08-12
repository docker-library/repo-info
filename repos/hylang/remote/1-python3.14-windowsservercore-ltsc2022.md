## `hylang:1-python3.14-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:8af082f34ed4bd61c3078839d6763540f91a27aa2ad23c5cdc85fdbe936f1b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `hylang:1-python3.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull hylang@sha256:9426e514672c07b9786512b8e88416605fa675319d7f71f88c3d3b4be71e2826
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2261257560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4607346e862b5fcb8ab8ebdea6639f7120c749046e1c182b4478c9b71186d0`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:29:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:51:06 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Aug 2026 17:51:06 GMT
ENV PYTHON_VERSION=3.14.7
# Wed, 12 Aug 2026 17:51:07 GMT
ENV PYTHON_SHA256=9d9eb2709ef81bf5cd30db3c2096bdbc4ea10087c22e62f27d356b36f6ae9649
# Wed, 12 Aug 2026 17:51:39 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:51:39 GMT
CMD ["python"]
# Wed, 12 Aug 2026 18:19:39 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 18:19:39 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 18:20:05 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 18:20:05 GMT
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
	-	`sha256:38e1b28ed0ae3810fc60b70ae721befaf7ae0262b232808d6fb32800f97198e9`  
		Last Modified: Wed, 12 Aug 2026 17:31:51 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9670daa35cc50eeb9239956afe30337e5bce7af7a44cc28e7875723f3c3a97a9`  
		Last Modified: Wed, 12 Aug 2026 17:51:44 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ed63c94e2b6b6584c472d23f942ee49ccdc32918ae8312f583ef8b9a2737aa`  
		Last Modified: Wed, 12 Aug 2026 17:51:44 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2a5591b2c1c358bad57c737ab705e430482fd1e887485fe40c511281a81f9a`  
		Last Modified: Wed, 12 Aug 2026 17:51:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f5e602b645db6f78401f1f7c7973cb5a6e16fc8261fc88ecd346a7b37f1b8c`  
		Last Modified: Wed, 12 Aug 2026 17:51:49 GMT  
		Size: 69.1 MB (69082057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b291fa9606dd45cd349ef6ddc906b44ce3002d5658f8bf2244a4065e43782e`  
		Last Modified: Wed, 12 Aug 2026 17:51:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d65e67748f724f7078434325582dead2097a61361473214d829d45c023f83c3`  
		Last Modified: Wed, 12 Aug 2026 18:20:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1f5343be0e39d4b2f786cd07ca0c45fa0cb9bec982bee580c9f5792607a67f`  
		Last Modified: Wed, 12 Aug 2026 18:20:10 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2086b3ff2124b5bfd38bb0224d0ae0b5b9bc493d66aa4837ec9216fb1273eca3`  
		Last Modified: Wed, 12 Aug 2026 18:20:11 GMT  
		Size: 8.2 MB (8167693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e856310b8a515b359369e183a034f37aa6c26f25206de9882cc9b1e6c9771c`  
		Last Modified: Wed, 12 Aug 2026 18:20:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
