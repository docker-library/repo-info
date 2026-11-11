## `eclipse-temurin:11-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:405c265065250462a3bf6129cbe02259d7a87fbe96d5c4a0cb7828f0633f704e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:11-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:bc3ecda2f6a8d4f75f2bb85b7983b7fae585d03115c2a98ae0c732f926181605
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395245639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e06a1117c5f7b1570e187bbc29f8300aca013d8c882c78cae5fe63e87e337c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:46:17 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:46:18 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 22:46:19 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 11 Nov 2026 22:46:19 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:46:25 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:46:25 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:46:58 GMT
COPY dir:b2a9c02cf7043eaf69305b168557ff2023c509d078176e53125d7b39898c1c89 in C:\openjdk-11 
# Wed, 11 Nov 2026 22:47:02 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:47:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aadea634bf741db29f8d0bfe15cdb933bb1256d9f87ddad4df0542d5222284`  
		Last Modified: Wed, 11 Nov 2026 22:47:10 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bc1ea6dbcd0f35110284631e1c82bfe734dc8f6136b3634242245f1744c2b0`  
		Last Modified: Wed, 11 Nov 2026 22:47:10 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424822a7c897d641600374b3f5a1451b79b68a118e1a0def0f52d67c327738e0`  
		Last Modified: Wed, 11 Nov 2026 22:47:09 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01343ff8b127dfe31a09ae6f8d7e8781a4965a2bcc8570b24953441e9177bbe6`  
		Last Modified: Wed, 11 Nov 2026 22:47:09 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba053cfa95f2b37b8553f197d8741cdb48bdb7dcd9ff0b02f56bb33d02ee73ff`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 69.8 KB (69756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf833bffbccdef5c1c48c480b5b5f0a7401b16c55a6701ac15fdcdf3ea124a2`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774f4ae1591f7e76b82fb2d0f7f4179d484da970c7114176d099b7c735d86230`  
		Last Modified: Wed, 11 Nov 2026 22:47:18 GMT  
		Size: 194.8 MB (194843666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc6c40ea4144aa14826e34647e7d312f807f6e26b3a1de94bd2411973e18c56`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 83.6 KB (83627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e65a935965c78628242f7180722609629da0956769a959c13286a0f4b9ee7d`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
