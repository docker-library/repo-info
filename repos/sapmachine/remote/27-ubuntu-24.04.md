## `sapmachine:27-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:a155322d37103429ee89bb3d8652ed70b2dd05a8d244476357334bc12795dbc0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-ubuntu-24.04` - linux; amd64

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

### `sapmachine:27-ubuntu-24.04` - unknown; unknown

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

### `sapmachine:27-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:50630daf250ef4d6f80289921558d045ff65c727cd3124a37f316b81c9f4e3e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167629690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e4f2317d0a2543a1922ab8b8db094acdb74c3ee305734d35e926a9988a327c`
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
# Sat, 17 Oct 2026 00:38:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8ed4e4dea93afe921d43786536e90b87d5f982b3fd58683c7544f7b7e2eff4`  
		Last Modified: Sat, 17 Oct 2026 00:38:32 GMT  
		Size: 138.7 MB (138689929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:623ddf5df3bc33f8d285ced9c142c71caae88a1635fd6babf9b0f1edf230ac2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e28bb7628b0eaea9c3dfe5dead8d7d69e9a5533cc10b4d61fce65727629bd21`

```dockerfile
```

-	Layers:
	-	`sha256:f444898ce6eeeff6c070a7e568611b4cc08eaece6300ac5cc98feed334276c76`  
		Last Modified: Sat, 17 Oct 2026 00:38:29 GMT  
		Size: 2.6 MB (2550058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e939730654ad34be1bfe741b23dcbc212d9579d362131e5e18c23b1cf0a9174`  
		Last Modified: Sat, 17 Oct 2026 00:38:29 GMT  
		Size: 13.5 KB (13462 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:05926e3deeb782397f84e90ce3e57e27c8b3184b0bcd5296216d171f9e60c9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173282181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0bdb8fea7b673ad859da8ac74705f7b57b7aca0fae02e0d9434413b5f7848a2`
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
# Sat, 17 Oct 2026 02:22:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:22:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b216edb6e033fd89b09433648b85fc8be4c176295f74bf18f0a90cb6fb9696f`  
		Last Modified: Sat, 17 Oct 2026 02:23:02 GMT  
		Size: 138.9 MB (138904191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:00f9c086229aff74dfef85d0004f4f2d47c95c47d32c58419ef8f86e66519325
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe7d86f8f5a0f799453a434dce925fa80686a965dc22749c61f9fc36d0a9f51`

```dockerfile
```

-	Layers:
	-	`sha256:8e8a7889386d0926469c29068a1404a3d2b9c39981afc94d2e2e08fcff853ded`  
		Last Modified: Sat, 17 Oct 2026 02:22:58 GMT  
		Size: 2.5 MB (2548365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0525e771d3e543e3b8e661873b49df96839373581469036db039d9ca6b7bf729`  
		Last Modified: Sat, 17 Oct 2026 02:22:58 GMT  
		Size: 13.3 KB (13330 bytes)  
		MIME: application/vnd.in-toto+json
