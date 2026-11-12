## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:441ecf35c51e21c004403163db146059576f4a38793c76bde30fedae9fcd3587
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:57f7e48c5ae7bba7d1a83a5ea459fddd4c568f3ff00bc36ee2a19d2e09d1f119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253166510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da540814625ddffa761f90f1185da8056863081ab9ffe71bbc2d29fab8cd4e4a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:49:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:49:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:49:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:49:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:49:44 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:49:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:49:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:49:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:49:58 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:49:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb8a7179ab2510fa296b1038818927d25f19b2007690e0a3667bf84dd49f87b`  
		Last Modified: Thu, 12 Nov 2026 00:50:20 GMT  
		Size: 158.4 MB (158409397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeafafa8977df28d111d44b11ffc3258213c1a089c58cdca2403179fe7bc0a5`  
		Last Modified: Thu, 12 Nov 2026 00:50:20 GMT  
		Size: 66.5 MB (66507585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0d637ad95f8adb74d20d446ad138358188f20194796e966a7bf491e19878aa`  
		Last Modified: Thu, 12 Nov 2026 00:50:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb5ba0c6b79ea4fafbcf8dfe5e66eefed3e9241574bc049688037eb975472be`  
		Last Modified: Thu, 12 Nov 2026 00:50:16 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:485c16d962f1e1157231962c86e4d428c0847a3acfd49a436985dab4f329feb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4e8b3c5c35aca8c33af5e66edc313bd7d9a58899630330e06ecfa85154ea42`

```dockerfile
```

-	Layers:
	-	`sha256:33bb1c937bfb2ad1683c74f1ac1903e8363c28d6282b34273dd6d96cb89e53d7`  
		Last Modified: Thu, 12 Nov 2026 00:50:17 GMT  
		Size: 5.1 MB (5119957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af52fe67897a1a4a169fe28c4c8a063e20835b53329c7a2a4573f675b3183f15`  
		Last Modified: Thu, 12 Nov 2026 00:50:16 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2a1875a5e2d16e6da6b57b18b456281dec04ab091d764a75df919f43a8bcab25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251337862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b855aaae46b4ba3b088a67e612fae6cddcc21fd811da61fe38f72a12e3e18e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:05:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:05:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:05:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:05:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:05:18 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:05:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:05:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:05:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:05:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:05:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066707b96a29a629200927ec5cded21b7c2031343e6410c581d71432c6a52b11`  
		Last Modified: Thu, 12 Nov 2026 01:05:56 GMT  
		Size: 156.7 MB (156691656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc77bf1148450cf399402f3e9d78b86cbfa898d2fd0293e613bf7435788ff320`  
		Last Modified: Thu, 12 Nov 2026 01:05:55 GMT  
		Size: 66.5 MB (66500306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f7cadc99036dd6a470126dbd9242199911c7012aad2d5f7f5b06800ff79961`  
		Last Modified: Thu, 12 Nov 2026 01:05:52 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08fad2598b8cffd03bbfe0f103b21a3e429c5737e95fdd3f86fe4b447ed037b2`  
		Last Modified: Thu, 12 Nov 2026 01:05:52 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:009b6517305ff99ee981a35c0fd51b8635c317501ed4f8d2fa5242a5a52bbdf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9cf56baed44fc8b885de745ab2b9875135502eaaa478d635eeead446e5afd4`

```dockerfile
```

-	Layers:
	-	`sha256:a699075253e0372790533757ffbee1d8ee50a45ce270ae7fc324e43738381ce1`  
		Last Modified: Thu, 12 Nov 2026 01:05:52 GMT  
		Size: 5.1 MB (5125718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e4b01fb1e2d03e260877eb99f41750f38d72099b3b84082ecbabeeb5e63c113`  
		Last Modified: Thu, 12 Nov 2026 01:05:51 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6a0c3330fc7fff872c77f21464e24621d8b42fc7280b5befeacf3601e54cfa19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (262002067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c2fed295d71569b4b2e753a61ce0bd69798413d7d9b59287a2a9d539d5e07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:49:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:49:08 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:58:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:58:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:41:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:41:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:41:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00ab57e54146656986c1b7733b67f6124d946328177a69a693d4f11a2f0950d`  
		Last Modified: Thu, 05 Nov 2026 15:53:06 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff506ef2702f192437fbaa577e7a1aeae958306ad89a046f8d92eafd8f47b31`  
		Last Modified: Thu, 05 Nov 2026 15:59:33 GMT  
		Size: 72.3 MB (72333727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045d35e0b2c6588f9dd2afa2df47e597f16ba93a680f39f58cecebcb24b9c5f0`  
		Last Modified: Thu, 05 Nov 2026 15:59:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100d72b125af53135d80078ec7786edf01746f3ccea49d0cfa7eaca3673b4153`  
		Last Modified: Tue, 10 Nov 2026 02:41:25 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b8ea86460c98aabcb613411db3b798842dacfb156803d3a82960d72427b81b3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137281b67be1703c8590a4d65d543cf531192e114db173ba34164083abd93f85`

```dockerfile
```

-	Layers:
	-	`sha256:979fb341b193b5ca054ad967ca28cd69a9ed47f1d4bff249e57eb34f47b57ce2`  
		Last Modified: Tue, 10 Nov 2026 02:41:26 GMT  
		Size: 5.1 MB (5123869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:471275bde62c15f0fff429ef3161acc3de0c0b78a5018d2a08909422d10b3fe8`  
		Last Modified: Tue, 10 Nov 2026 02:41:25 GMT  
		Size: 15.1 KB (15083 bytes)  
		MIME: application/vnd.in-toto+json
