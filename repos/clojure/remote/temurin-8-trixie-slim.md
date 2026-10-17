## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:4f348a9e35c6f3345216f305358b4a347388579c04e4510170ce3a9da082880d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:18d7639767d8ac918faebf3a8e6cacb3c645a2a06caee99db5d3a62e48c26b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (154026127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddeeface9f9e2e7c819f0869d068141e42bb86e1c8b8ec178bcfc5c8ea84547d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:46:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:46 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:47:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:47:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2162f687754e4c85a0bd60b3e19140af5056a3630867d4e54a00087e49cbfa63`  
		Last Modified: Sat, 17 Oct 2026 01:47:20 GMT  
		Size: 55.2 MB (55192273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e553b699a5e430117851cb9812dec67b46bca83d422a7c588b5050c4908b8cb`  
		Last Modified: Sat, 17 Oct 2026 01:47:21 GMT  
		Size: 69.0 MB (68989860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668d1817cf312b6ed1c043fdbdb5b72a87077c32d3a58574cb46cd6ddeedd4e7`  
		Last Modified: Sat, 17 Oct 2026 01:47:18 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9afe87881c05edc2f494ca212621e720958df9b028adef8b987d35cc83e4a5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3292e03628418e0f0201daa1db829660b5a4db66718d5007f548c38c992c12`

```dockerfile
```

-	Layers:
	-	`sha256:3639712869f1b46def6626d9f2b815461e714c86e60ef795a6c5c56f2a5803bd`  
		Last Modified: Sat, 17 Oct 2026 01:47:18 GMT  
		Size: 5.4 MB (5383668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:261231152260230b855f999bcaaca8b337d5000a7f7452768fedd8875e8de635`  
		Last Modified: Sat, 17 Oct 2026 01:47:18 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e47435c14713450f088839f22e6f799dc60453593e387a7bd37172c9111b07da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153265646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a679b590f82a73bc0d35db5c3238a4889f7f4822ae7d6a660ea471dd59de2dc`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:46:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:53 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:47:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:47:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3bf8376152512b9adb5a5267527139cdf0e99aa14aebfd4274808d9020c45c`  
		Last Modified: Sat, 17 Oct 2026 01:47:28 GMT  
		Size: 54.3 MB (54254298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81825bd6df52a539051877b0fd0ef8daf7ad99984bbfa2518e4e2352a5e18ec4`  
		Last Modified: Sat, 17 Oct 2026 01:47:29 GMT  
		Size: 68.8 MB (68810420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288f6228e53ef62915146b2cbce5c76846752634169b58dda416ea5a081db4f6`  
		Last Modified: Sat, 17 Oct 2026 01:47:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d58e7bbe54e41f4f31bfda09bc1c8a33a5cbc06cf25a01fa36b5a99f58a3e93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5404628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a4818a5be0c34bbb7eab0fa74d944d3d4db4fada4a3195fb2b34cf02da6a23`

```dockerfile
```

-	Layers:
	-	`sha256:334c81073f3fc881fc11905e665f2c842f8aefcdf71934f9a093965e08153b56`  
		Last Modified: Sat, 17 Oct 2026 01:47:27 GMT  
		Size: 5.4 MB (5390129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8374ff8e34c6694b036ce7dc0fd93aa4d59a3050b3b8947c332c63b6f0091e00`  
		Last Modified: Sat, 17 Oct 2026 01:47:26 GMT  
		Size: 14.5 KB (14499 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:07b09d254cf914e8da2c15da7f2eb375ab07fbd3bb355e85d3cfd3ff1fb5228a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160736941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ac3bd431920ab9ed7d524ee14a53ab1a29144efee7d451e9c6801140ef9e01`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:13:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:13:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:13:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:13:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:13:37 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:15:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:15:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:15:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676b269510085c10863f6498050caf72ea9283125d92dccb0c52df423801a444`  
		Last Modified: Sat, 17 Oct 2026 05:15:56 GMT  
		Size: 52.7 MB (52667127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f6d92b48775a25fecc15b3bdf5f0488d6955f248834f2352c88ec93ef73cb7`  
		Last Modified: Sat, 17 Oct 2026 05:15:56 GMT  
		Size: 74.4 MB (74417569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd4be398f8ecb3cf1d08321d0bf9b098ff3e4d8010ba9b6ac198e6cb330f4fe`  
		Last Modified: Sat, 17 Oct 2026 05:15:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e396eb30179afa167df818eba78876443d5faf5bc0241595aebeb5dd2f650bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94f2d072557afcca911baae088b82d909950fec9e3e3b291e3860e65c878f26`

```dockerfile
```

-	Layers:
	-	`sha256:14f2457086aacb717ba127cde25ea454ded040fadf4e49da2612592366567053`  
		Last Modified: Sat, 17 Oct 2026 05:15:54 GMT  
		Size: 5.4 MB (5388634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a60313af2578ec900bba10a90fd5377a00d9e0768a1ca4c9aa4b2f1826a5094c`  
		Last Modified: Sat, 17 Oct 2026 05:15:53 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
