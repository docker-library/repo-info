## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:4d2d0ef2ae25017a9dc426875ef10ab93a33fa364ea27115774a35b103bdb7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a28280e6c1b5197834a14bd0657dda246b3237c8724809d3878df721b671a2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240620415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f610423b6da07bd39884eee739c9e0782bc2eeb777850828955e7643feab6820`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:11:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:11:04 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:11:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:11:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:11:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c36ff56e3535c0f11dcff7df117bcb8c9287a3ef3927a3324589f39e907ccd`  
		Last Modified: Wed, 28 Oct 2026 02:11:40 GMT  
		Size: 145.9 MB (145864284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16e83d182dcd8668d03d33d7bc8d6597aed0685d0219127e0ea4b0752f7d92f`  
		Last Modified: Wed, 28 Oct 2026 02:11:39 GMT  
		Size: 66.5 MB (66508048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ddd66c9dc092ffb6866641bc025e024335c31d0e575e8f14229c52a1e8062fb`  
		Last Modified: Wed, 28 Oct 2026 02:11:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:72124d37ddaefb1622020ed6e7864f7a33a64c6ce51966062170f1abe93a8426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5151977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6db512281cb24e0e2750906ad3dc33a1701212f50a2b5ce5d700750f4841c7`

```dockerfile
```

-	Layers:
	-	`sha256:20d8bc33832ca69984d89c0942c0b32ae1146145fda0fbc697af0fb43f2d8c1e`  
		Last Modified: Wed, 28 Oct 2026 02:11:36 GMT  
		Size: 5.1 MB (5137557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3121540326ee471ef88943de7a18dc494e00f2bb052479c5be7e0a730c4c809`  
		Last Modified: Wed, 28 Oct 2026 02:11:35 GMT  
		Size: 14.4 KB (14420 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9d74cb0165416e18982fac9a9c050bf34af4ba82c3cfe314a4589124bf713752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237216158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21462567eb1b56b11214207f517622e94016e04e9b7862d585aa0e90e3bb2480`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:17:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:17:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:17:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:17:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:17:18 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:17:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:17:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931c283a2f48b5f88b676763bc9487657e45c419f03068c016dec5f0f2b82af1`  
		Last Modified: Wed, 28 Oct 2026 02:17:54 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78cf4c083764f19b929621d110e04fca262e93a99e8ec319b96bcc55079e9275`  
		Last Modified: Wed, 28 Oct 2026 02:17:53 GMT  
		Size: 66.5 MB (66500963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a52ae053a39162962508cafb11b94da166c2ad421b1afc48615de34f9b4a3eb`  
		Last Modified: Wed, 28 Oct 2026 02:17:50 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3af666fd62700d59c074d7fa5faf608e0c2076f9ff162f4d3a70830f2c11b0e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5158475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298331ac97c58aef336ad546393414d5577079f2bb9d670161b65ac90aced05b`

```dockerfile
```

-	Layers:
	-	`sha256:f73abbceeb188e9261205959a094a012e134714bccedb983e7061a9cedf8201c`  
		Last Modified: Wed, 28 Oct 2026 02:17:50 GMT  
		Size: 5.1 MB (5143936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf579874fd276c0117566276127b02fcd65fc7a7b7407a7d3aff1e79e8c59bf3`  
		Last Modified: Wed, 28 Oct 2026 02:17:50 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e5ca0461b78c156e3e2fdfa2c182545bec09b03d17add77ff88df0ec18dd7a86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237522333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5d3fb6a3481cf11c3c8fcf9467878d3e9e046b6762d043e2bda850f9d2acc8`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:58:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:58:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:58:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:58:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:58:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:12:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:12:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:12:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb086e599d6565b3e77279e7b178001d0b1cb12c5fc3e049b1c486611b18ac61`  
		Last Modified: Wed, 21 Oct 2026 10:04:02 GMT  
		Size: 133.1 MB (133095148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6945a7594637330f460f4dfd251da8dcfe69712f769fb0c3e7c9dc6248e348ce`  
		Last Modified: Wed, 21 Oct 2026 10:13:08 GMT  
		Size: 72.3 MB (72333327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99d7d545f2af3e47866352cbe7df58a2c5960010084e4b45b25ebba78467c5f`  
		Last Modified: Wed, 21 Oct 2026 10:13:06 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2fced00ded6e8cfee1602fc97b484b4980453874b409896dc7aa3add69566acb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5156541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50634080299e36499247c025cf9895427391d7d2775d50b07c42e7dfc18f5b54`

```dockerfile
```

-	Layers:
	-	`sha256:f4c300ce07a0233f0ec0fa39ed26e265b0be33233dbd2c14dfb10b521067f441`  
		Last Modified: Wed, 21 Oct 2026 10:13:06 GMT  
		Size: 5.1 MB (5142072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63514aaeabb662354d4bcf08c701f2b67a4e058b5aeaa3145ae173a427e9c58d`  
		Last Modified: Wed, 21 Oct 2026 10:13:06 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
