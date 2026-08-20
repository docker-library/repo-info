## `sapmachine:25-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:705f6f4b708ec447c3c1961fa43e103cdef666a0b3ddf2026ea38fdd98d0b529
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:5786a895a34aab45d0231251a4965dfc5167a63cea133c31b8a666c8e2000caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252493756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d4a0deba579d50002ab787d27a59082f34badb4cd35ac9ecd262849b255430`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:06:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:06:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:06:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2cb006fcb7149395db5d1fe23298d29fb3518043f9b943fc615e7c06d0d115`  
		Last Modified: Thu, 20 Aug 2026 18:06:31 GMT  
		Size: 222.8 MB (222756813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:82b6c003914e80fbb15ad79b65d6ff8250fea7cdcf672df4e3a8f53f979b1b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05ec967807abdfc59df80da6731a11572640ba92a132666e5977527038614bd`

```dockerfile
```

-	Layers:
	-	`sha256:b0872e52947d3cdd3160b9880359913241fbb8064b29b4bcba71b301f336f508`  
		Last Modified: Thu, 20 Aug 2026 18:06:27 GMT  
		Size: 2.4 MB (2369596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6d45ce79b8a7e09a96adbfdf1e4ef660b2daf3943e7f4eacad10fb8555ca710`  
		Last Modified: Thu, 20 Aug 2026 18:06:27 GMT  
		Size: 10.3 KB (10333 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5b5157add3b8582b881370ca98bee3fe962d757ce39493eb23cb984b8a6c0da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248100692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba9e023a226d4cda3529fd5c94402c256a201b3ea77aedbc11a2a1f8a49fcc6`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:03:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:03:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345a86b0eb0fa4fd0a0c2f13cbf22b11902ef0adb8fb35433d0f1c9ae7eed9a7`  
		Last Modified: Thu, 20 Aug 2026 18:03:47 GMT  
		Size: 220.5 MB (220480239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e24981b3ff9e4c0cbd5790a1258ed7cd50c4ca1c32cb6f73ef533119cd1c48a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d52672b5ae3ea293a346590c89153b092cbda39abf14da2ddf627c4f103f1e7`

```dockerfile
```

-	Layers:
	-	`sha256:e6d5f2c4c32bf770b875cf504fc918d1814d1c004fdc0459e2a04d9a3acfeeb7`  
		Last Modified: Thu, 20 Aug 2026 18:03:42 GMT  
		Size: 2.4 MB (2369289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9852087852e9089742b2aec6ca0b9dc93763d12306b6e20b925817053f5ef14a`  
		Last Modified: Thu, 20 Aug 2026 18:03:42 GMT  
		Size: 10.5 KB (10461 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f19306e1ae2068aa58124ddf72f7d098633d8e9c002abc1c672cec8ea9f9a7e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255355752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093ee365a4014566d1f8eab965cd4ab5716d4f29eb59f7961f135995bc54bf54`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:08:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:08:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:08:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60274c9fb5f56ef91a1712fca05e2e4bc2b4747af7f430dcbde4aa8be5da647a`  
		Last Modified: Thu, 20 Aug 2026 18:09:32 GMT  
		Size: 220.7 MB (220717607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5c269625a9a016a96756e51d4f9d22b5cecdbea5af69e390e6de289818fb58d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43450b56b234ba01ec01adc65af3669903ea278461fb3ff60a20611bfdec270b`

```dockerfile
```

-	Layers:
	-	`sha256:9d16583bb04ded1d46b3d5ac58c56f79b6c59e78af684e9401d25a5f250aa277`  
		Last Modified: Thu, 20 Aug 2026 18:09:24 GMT  
		Size: 2.4 MB (2366486 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccb4bd17c20409e25466cc6d50769232c3689a86cf83dc68a985d0ccba7fe0db`  
		Last Modified: Thu, 20 Aug 2026 18:09:24 GMT  
		Size: 10.4 KB (10389 bytes)  
		MIME: application/vnd.in-toto+json
