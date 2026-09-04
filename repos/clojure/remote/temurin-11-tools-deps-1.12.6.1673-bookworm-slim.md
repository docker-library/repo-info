## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:498df6780dca149afe63a86aed225828e3089ead3a6887a98af5e2168ecbedde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:10b1e7d1cc8e4d82fa89fe2a4709cf136689c9d3fd18267fc37efebd9ddfdab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240779727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f335e6800ed4d9322d596be895fcad181eea7eda647d90f28ec990a2ef1411e4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:01:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:35 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15c5b2bfc626b7981c53612948b94f9b4a3748fcb22bc9a0ecac08cc8a4121c`  
		Last Modified: Fri, 04 Sep 2026 00:02:10 GMT  
		Size: 145.9 MB (145861403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b42ea3f9811ad13c927b52185e1aa710180eaaf75ded12cd3b9e7e17ea5221`  
		Last Modified: Fri, 04 Sep 2026 00:02:09 GMT  
		Size: 66.7 MB (66685023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651ecc2f45fe4a0d7a4b0d8f5759cfbcbc207cfe4ddff629229011f4adc41abd`  
		Last Modified: Fri, 04 Sep 2026 00:02:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ab6af8e41082ed8fb6a20abbb87173da0f0809316c285a53df07580da933f516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b905673a51a91769812d25c544bec68ff9011cf9eb69ae78854db64e41fc33`

```dockerfile
```

-	Layers:
	-	`sha256:23c9e6b7d70f7c1b82ec808f260f741ad3a4f5e9bab59b55dd5a031ebd8b7da1`  
		Last Modified: Fri, 04 Sep 2026 00:02:06 GMT  
		Size: 5.1 MB (5138752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4e353f6fa43404e9ecd7dd09da134bef8e81a35dcdcd40f279f21ad3833df3`  
		Last Modified: Fri, 04 Sep 2026 00:02:06 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e69a9ff0569db716f8aa3992c2e574e4fc0d2d2c54bf86525252297a1ea4587f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237368606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba8f6b73a731ff34318c21fc7deca793d539df0b2c3ba94995e653bf58e1cd3`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:05:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:26 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:05:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:05:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:05:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401329db41cd77e7ca488e2045b8fbea41218761e57482816c215abfcb86f9fd`  
		Last Modified: Fri, 04 Sep 2026 00:06:03 GMT  
		Size: 142.6 MB (142566600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2095dbb1222d31a2af3347a7df21975446dc09430aa9dde858e8a9f7636bea1b`  
		Last Modified: Fri, 04 Sep 2026 00:06:01 GMT  
		Size: 66.7 MB (66684072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaaa91d1b1ad71dc6f30da79a5dc7327a6273145e65886b3aa1badcffca3052`  
		Last Modified: Fri, 04 Sep 2026 00:05:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17ecb7bbe0233b2fa5971171a3a4ae44fc722a8e599482bccaf3120e26576d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e490f26384563f65a04fe4fac5a3f0ff718b4c550d473d9be5e1cbfee6b38dbf`

```dockerfile
```

-	Layers:
	-	`sha256:817c46f6376308fd19379a7a4412db7d56ea3a07892190af5321a08ded593617`  
		Last Modified: Fri, 04 Sep 2026 00:05:59 GMT  
		Size: 5.1 MB (5145131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2888de652ecee82088f7671249f24246b12436b7488f89d081fdf612bd183a6`  
		Last Modified: Fri, 04 Sep 2026 00:05:58 GMT  
		Size: 14.5 KB (14538 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:787202f119ff9d47b4211f8e8e07565442e0bbba1ccb0c9bb4f7afcdb90f03ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237665648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c344c68107662a3e77bca335e5ec9e447718135a7effb01baa84b06237d2d5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:09:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:09:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:09:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:09:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:09:44 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:10:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:10:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:10:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99415debe061f176f2a5bbf95549000ef92707e63b99c89fb4b2882fe7d66cc2`  
		Last Modified: Fri, 04 Sep 2026 00:11:27 GMT  
		Size: 133.1 MB (133089920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b3ba6cf98e072cc80fde5b350e303307b947febbab0b5a3e48b56314a0817d`  
		Last Modified: Fri, 04 Sep 2026 00:11:26 GMT  
		Size: 72.5 MB (72498606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13f507164ff6f51b1ed5d948515a11dd787d08e87ad27896d435ceaba7862c5`  
		Last Modified: Fri, 04 Sep 2026 00:11:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:66a33ffe8f60018de547ae316ee51a3a1cb1f4421150a4ea459afa48eaaad296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662d11070e01628148bfaf3f2bf54c165eac460cb05aa787a3e14876da7791da`

```dockerfile
```

-	Layers:
	-	`sha256:ad6082f2799482340214892f9f6d39527a30fe5f4a06d000122fca6d335a839c`  
		Last Modified: Fri, 04 Sep 2026 00:11:23 GMT  
		Size: 5.1 MB (5143295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ff59a0dddffb64cafde4f1f71c26cd01652c6a2bda9e7c6f7ec921863313a35`  
		Last Modified: Fri, 04 Sep 2026 00:11:22 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
