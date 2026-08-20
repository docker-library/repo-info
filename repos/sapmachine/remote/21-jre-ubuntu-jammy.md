## `sapmachine:21-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:e5aa63ca8e6fa2ca05358c7312398b75d5a950aa5c143ff8343591833c34fbc7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:75cf7790519edc89081856497e6943249ea23f2d023bab2b4db230ad86bf247a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93149197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6482bc082c015f44cb60d140d9ace24fd2e3b38d0c5f9d838f256da1d36e0f9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:07:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:07:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:07:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fe5edf2adbf9e779e3b8c2780be2259c3a9fbd9df97812c4932fb0f994e8bc`  
		Last Modified: Thu, 20 Aug 2026 18:07:18 GMT  
		Size: 63.4 MB (63412254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2816e593d6358b669f7565b07ea3ba3aa957c56a936b3496d6e43589522b5711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f392e15fce08d849d61c82ecb82371211eaf9b7f42a28b1b7a041489fcca1c7`

```dockerfile
```

-	Layers:
	-	`sha256:f9e03eebe31d653eacfc2408dbbd7c4dd48ff9b048ca8d95d4e60008b53fb8da`  
		Last Modified: Thu, 20 Aug 2026 18:07:16 GMT  
		Size: 2.5 MB (2547951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ae3cd14f161cb82a42de8e8c0b20ff2e622fc956c99ade86f9e4873e4d86e24`  
		Last Modified: Thu, 20 Aug 2026 18:07:16 GMT  
		Size: 9.5 KB (9521 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:442f9ff2439601330664d48409253700aae2dde06364aef53fc51f0b044acc7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90187296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dda98a79564557c1336d52a4b6f21725a2ed283a5b0439c366961ac1c62269`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:04:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:04:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:04:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082279b5b25cff99729ebc7f13b4bad4b69be71796cff0fb656654c06bb372ad`  
		Last Modified: Thu, 20 Aug 2026 18:04:31 GMT  
		Size: 62.6 MB (62566843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1108d05ba116d0fb730a088b73bcd4bd5ec8c33692802feb0bd8e63a8f61a6e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19741b9e8b08f3f63fd0e1f362c53cd95b013c9cd87009a6dfb4820d4ba674e`

```dockerfile
```

-	Layers:
	-	`sha256:6f102a241e6557b1f22cd49fd13dc5ca926d40bea4a5dff625b37d877cf5e36c`  
		Last Modified: Thu, 20 Aug 2026 18:04:29 GMT  
		Size: 2.5 MB (2547633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ef49a251b77768293755351679cf59d2d0e4c93842a326a3769aaadbed625e9`  
		Last Modified: Thu, 20 Aug 2026 18:04:29 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:42f21ca618a5f3e94f76dde35296e1939280a7bc787c0be2d7c0e1a74103c172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97828013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5b47301ef3c789455987a8ce2b8a44872c09e0e96dd73f902e847487c4d52c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:13:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:13:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:13:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb86ef7e90759f2b8ec3c91a7763f03170054e981c027128d897bc4c66cd5c6`  
		Last Modified: Thu, 20 Aug 2026 18:14:09 GMT  
		Size: 63.2 MB (63189868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:57a32315a8c4e88ddf3a428056474e7781e20b53f973dd60b0807fb97189143b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82293778209b66a639a51e78e6b0e6fec28671faf9212bd1ed4e8615f8b8d9ea`

```dockerfile
```

-	Layers:
	-	`sha256:e0891885dbf81de9fef8b3504c15b856592fa57196bd417d784b432508eb5b9e`  
		Last Modified: Thu, 20 Aug 2026 18:14:07 GMT  
		Size: 2.5 MB (2547483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:784b6009635cc0056e5d10cff66145375f7407f1540ce0b82536f0a1f7a72da5`  
		Last Modified: Thu, 20 Aug 2026 18:14:07 GMT  
		Size: 9.6 KB (9566 bytes)  
		MIME: application/vnd.in-toto+json
