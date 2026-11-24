## `openjdk:28-ea-25-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:eb9fe723774b3b8ec83c66c6632887735868476a52430243acbad1701db44593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `openjdk:28-ea-25-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull openjdk@sha256:fcee46efb1a202bf526a4b93d593a0ae71d19c2c9217bb8f2593c2e06a5c5c04
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.2 MB (441176589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac84350a2109c74fd666d8ff0140c6ddb796be385b09ed52f59273f79206e4d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Tue, 24 Nov 2026 01:07:39 GMT
SHELL [cmd /s /c]
# Tue, 24 Nov 2026 01:07:40 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 24 Nov 2026 01:07:40 GMT
USER ContainerAdministrator
# Tue, 24 Nov 2026 01:07:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 24 Nov 2026 01:07:55 GMT
USER ContainerUser
# Tue, 24 Nov 2026 01:07:55 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 01:08:58 GMT
COPY dir:68b4a14d04a21adc7ac61b7c72972feaf81cebf677e9e653223f9093785da3d1 in C:\openjdk-28 
# Tue, 24 Nov 2026 01:09:08 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 24 Nov 2026 01:09:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aacc99d42a12498a3a1c832d5fc9981372509b9f0b7ae95cece8c2cf7d84c9`  
		Last Modified: Tue, 24 Nov 2026 01:09:15 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfc8f7a083e61316ebca3cb207c3b81ec8d6aee65a4d01ac75c169dad97f8a1`  
		Last Modified: Tue, 24 Nov 2026 01:09:14 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a6c600dc4ab7fb0637d87d7f7858f20cfdac7f9f3b1d2435d680c39161f0d8`  
		Last Modified: Tue, 24 Nov 2026 01:09:15 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1457e64e79af1fa36d07a439bb4138c5c67aebace41e0d4b67b11d8193f22ecc`  
		Last Modified: Tue, 24 Nov 2026 01:09:14 GMT  
		Size: 76.0 KB (76008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3400d5a47d8dfa14df3d92d1097061a546c924e98b8891718467c70c253c2919`  
		Last Modified: Tue, 24 Nov 2026 01:09:13 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abda19a8f67b47007743df6d17453a85cfeaa0a9a04fe509a9137ad3eadc355`  
		Last Modified: Tue, 24 Nov 2026 01:09:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f90c7a94681243aa90cca2d03a9f04383ca87d2c5f302b22b392fce15eb7d8`  
		Last Modified: Tue, 24 Nov 2026 01:09:29 GMT  
		Size: 240.8 MB (240757458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907d580b641f534a1a7ecfa7bac778d8bb3f2ae76d7eaa0b42f8e14583cc1a2b`  
		Last Modified: Tue, 24 Nov 2026 01:09:13 GMT  
		Size: 97.1 KB (97064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905aa8c8caed1bc82bfb5362e806931d38788f51c69f89c7207efb358c480558`  
		Last Modified: Tue, 24 Nov 2026 01:09:13 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
