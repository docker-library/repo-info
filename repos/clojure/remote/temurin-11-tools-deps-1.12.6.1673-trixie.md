## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:e2cccf571c8067ffd2363dc5c7682064c5ee47f810d05ed9994f8c7ac7c7bac1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:59e3497afa38544db1612a46b451e5fa07cec2fd2d09f924148379cead775fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277835065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604939145caa4c9543b7b260fdab78bb12cb51f3cea4d5a13091fbb4cbea1d04`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:48:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:48:15 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:48:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:48:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ab072497c9b872e32bc49350b8c9de918625670e8852c005f3b2d08d68ae71`  
		Last Modified: Sat, 17 Oct 2026 01:48:56 GMT  
		Size: 145.9 MB (145864518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b5a1c960de234e04cd43d8afff2174fed34986fb0fea08a7464960eac1c0cf`  
		Last Modified: Sat, 17 Oct 2026 01:48:55 GMT  
		Size: 82.6 MB (82576701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503db3b5a51fb22f043d359765abe5138ca48b7a445e67460593a2c306f86c50`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6d160050575ac8b7371f20b802bed504f125eca261da24dd4e65c8adb67e28f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee3370a46ad7ea3f98bfd06ac2f0c18a59a704886b9ac14e67b81c3596beca`

```dockerfile
```

-	Layers:
	-	`sha256:1c2f5dcb7fd5a86012bbc9ffc3a8ea6ca4e7e5b99109aa73efde983375e465de`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 7.5 MB (7498336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d503504055ba5b47db7182f7020c037f9ec2cf926517fa4a3e574092bef35a6`  
		Last Modified: Sat, 17 Oct 2026 01:48:52 GMT  
		Size: 14.3 KB (14338 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4839dfa8b5e9dd4d803e8e15e71ef37406ecb9cf2719aa6f572353591fa83c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274734289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3658783391a0848a7404ec21eb32ee28cfe90c82f48f51acd2c928a87ba977`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:48:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:48:13 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:48:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:48:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86a37d18c3a1c51209cba89fbfe0b105c92492477c5f926c3e20577f874e998`  
		Last Modified: Sat, 17 Oct 2026 01:48:57 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce100d369ec65d6d6a688e1f368c41ced324ba64fa7e0a1c9f04bc168b149d21`  
		Last Modified: Sat, 17 Oct 2026 01:48:56 GMT  
		Size: 82.4 MB (82395963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b991712be7f06ac5196e27478ba56ba946347b384367d9f1284a99d22b1f300`  
		Last Modified: Sat, 17 Oct 2026 01:48:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0ba5a26e5d3cd61fec0921fffabc1541c277fe7bd3982aae69e590d7b226eb25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334e9355c1e97290d6709713b0ab2ce7c48fdff4ab779e8cb23d533fb5512c73`

```dockerfile
```

-	Layers:
	-	`sha256:7247a9ad81a0ac9fc9f3213e9c9b593bff0b3ffd4fb52035b20ed5c34b7d06af`  
		Last Modified: Sat, 17 Oct 2026 01:48:53 GMT  
		Size: 7.5 MB (7505347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e45779e74de247be3e56724c7d998f83b50ff94e98b2811422d7abf891c7729`  
		Last Modified: Sat, 17 Oct 2026 01:48:53 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:cee89c3bb6cbf13d1cee61e5eea487cdb3e1fdf10f4f3c2901f948a025ac5443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274291874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc221089b224e297eb5e8bb86563a5adc25942b078526babbea5ccdccb589c6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:49:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:49:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:49:56 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:58:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:58:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:58:51 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c2e011e56e78db8374efda3b94fe762c4a963509127a04e984447ceeb92501`  
		Last Modified: Tue, 06 Oct 2026 09:55:19 GMT  
		Size: 133.1 MB (133094704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4078fa80a83681cb5c498021f8726141f438281670803af5e717259e011c3c38`  
		Last Modified: Tue, 06 Oct 2026 09:59:42 GMT  
		Size: 88.0 MB (87989400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66429bdb458a659579b803473fa14f57901c64e06286b521e35f59a2ce76ac92`  
		Last Modified: Tue, 06 Oct 2026 09:59:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fc2873c76c398be43678a932f862579e8f8d07eaad56fa06e053a0a59fc953e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15db72aebbd30d7af87a55f0c85af9757528dcc207bb651d670dcea5bfd8a91f`

```dockerfile
```

-	Layers:
	-	`sha256:5cca89fc2330bac1ed6480e4b33005c1a8a0074f0ce4ac77cc5c92b29a9225c7`  
		Last Modified: Tue, 06 Oct 2026 09:59:39 GMT  
		Size: 7.5 MB (7502140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2711afaf994301715403e00a2010715f334526459c4c7619e9065812945931fb`  
		Last Modified: Tue, 06 Oct 2026 09:59:39 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
