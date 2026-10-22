## `sapmachine:27-ubuntu`

```console
$ docker pull sapmachine@sha256:c451856ba07c29076b88700a7f980e62aca39a51e31830fb498616d98f20f3d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:93062a538db718c310b4c6f94c23421aca05bea4d47b45eea10b621eb60e5fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169413198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9247ee0444dd8c820fb59fa3da23ed5e31fd29ca925cc112a22f2f23097517`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:11:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa014b90c208a812d5153c82ea0734b3e1ea1a9cc9aa2734cfa3dcaccbcfae3f`  
		Last Modified: Wed, 21 Oct 2026 22:12:18 GMT  
		Size: 139.6 MB (139647440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:03cd8d2b709cfe9f4bbef18097ec980d0934533e0b88bb7ed4d695484f9c0fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2567927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca4259b70855a8a4d53e21a6537f7c6b12fa88281ebb889e4626d7d24eacd05`

```dockerfile
```

-	Layers:
	-	`sha256:3e33d05ef16ba0f2c5594b59b280e032f70846e71a4e9b0c0e941da9fe507df8`  
		Last Modified: Wed, 21 Oct 2026 22:12:15 GMT  
		Size: 2.6 MB (2552089 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:743b5b3325eac7a3409b5326afe16ee47e008c067a3fa6a0f70ff741426bcf2c`  
		Last Modified: Wed, 21 Oct 2026 22:12:15 GMT  
		Size: 15.8 KB (15838 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c738979b033fb8588fb7f17efc15bdf3ce39f6d55793e1013ebc2a43fcfe0825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167671664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7295d60885db1211aa59c1a9546cbc5da1a616ada534e4215d0c8a24d5a7ea`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:44:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:44:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:44:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213fc38d86fb36de8232e73842d06e57d5edd34bcae0d422e0a77fea0ca091e5`  
		Last Modified: Wed, 21 Oct 2026 22:44:56 GMT  
		Size: 138.7 MB (138731903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bb3d738a8abfd5e5cbf7aa6f35ad827a205f10d26b1d50884e751f8b2a85118c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2568975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9106033468d85d9d29756d7ece5835447eea7bd5ec317ba018a11d7914e72b`

```dockerfile
```

-	Layers:
	-	`sha256:828ee3a28f4048811aa303e7ccadc9808b4d327e3c6c7fb30336b5eac119dc69`  
		Last Modified: Wed, 21 Oct 2026 22:44:53 GMT  
		Size: 2.6 MB (2552794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2a52708308363dff888accb398cfb34e2528d7a82ede9d94378b4ad40fd502`  
		Last Modified: Wed, 21 Oct 2026 22:44:53 GMT  
		Size: 16.2 KB (16181 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3261f9e24df9590a1df75c725eeec0108db357fea1c512baa6dd851066aebf7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173326895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5913d3281b37095383fe8f4fa8a45b91307885eb6329b3cd5227046c98cf58`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 09:52:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:52:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:52:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231c81eda053604290c50d539ccb74ee721316c119dbf30f61104b7769669848`  
		Last Modified: Thu, 22 Oct 2026 09:53:29 GMT  
		Size: 138.9 MB (138948905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:da414fcb9d4451bd3f26df70af9e58883514cc911b0eb0314a61ca79bfa31559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2567054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3099c0857dbecafba2e13abe293262d75ea12b6e10897aa1f0486b2200fa8125`

```dockerfile
```

-	Layers:
	-	`sha256:7a1e995078b121359e6f08fdae39304372e8a1173e56cceb22968a45159d5a89`  
		Last Modified: Thu, 22 Oct 2026 09:53:26 GMT  
		Size: 2.6 MB (2551053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baad623be1fd94ce5d8f70149623f2137131c95574d446b8cb37bd917ae76d99`  
		Last Modified: Thu, 22 Oct 2026 09:53:26 GMT  
		Size: 16.0 KB (16001 bytes)  
		MIME: application/vnd.in-toto+json
