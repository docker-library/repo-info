## `clojure:temurin-11-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:f7dbd57ca61460aa44cd64b6791a3f7e5d65360044f80c7614d281045f03a269
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f9ae467d4217dd67b75088ebbc3e54ad0c783cbbc2fbe9d83d24d070b5fc357f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232259965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757545aaa163a78f55ae55fed9131e3a7677eebc17d302eca3d09e8e9e37872a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:43:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:08 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651d240f28a85b1aefdabb48d87878841b41ee7994577455db53a62465157aec`  
		Last Modified: Tue, 18 Aug 2026 20:43:45 GMT  
		Size: 145.9 MB (145884964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098d20e498ea79ec15f337d7a25660c53e73e0c583488db389f9ba026cbc93bf`  
		Last Modified: Tue, 18 Aug 2026 20:43:44 GMT  
		Size: 56.1 MB (56114738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af0a29054ce6940d1870396508003f57226fd6a14daa4f64bda0f2b5d4d1235`  
		Last Modified: Tue, 18 Aug 2026 20:43:41 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bbb69c0beb12f3f4bb1b70cb5834e21d8a66d7d77b5c9e45568b22544de93182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5356987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e2010155db20f55b816e3cdf6aed16c458b7fe09ec254bfd0e17270eb53282`

```dockerfile
```

-	Layers:
	-	`sha256:b12f7c2acf49f18cabe68e79b55906ac26b1d426ddb0d6df55799a8adb0c24ee`  
		Last Modified: Tue, 18 Aug 2026 20:43:41 GMT  
		Size: 5.3 MB (5342568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ece3f3ba023d10eb3a10e49e269c3ec009c186f5c9143b41be9f437a1de56c`  
		Last Modified: Tue, 18 Aug 2026 20:43:41 GMT  
		Size: 14.4 KB (14419 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e6e1f6201c385205677266d0ae5e8aaea140579aa9a52cf6f6a9ebe886b618e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227613021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a14d373a4812e91c7d6b77182e3cb41a13d7103a85c2f8230ef2460690cb1c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:43:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:21 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a145cd0aa3868b15022087b3579df2301a7f600f0d4d4ec57208868ef63cbeb8`  
		Last Modified: Tue, 18 Aug 2026 20:43:59 GMT  
		Size: 142.6 MB (142582130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7386c23c7bdd06a3e71a2d5dfbffd12d2d67ff3b648765dd147d7c0ec2f9cb8c`  
		Last Modified: Tue, 18 Aug 2026 20:43:57 GMT  
		Size: 56.3 MB (56281339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b30dbafd4d10f8db49213bb0ca28921b10d8a8a1b540d8a379d0797ab2d1651`  
		Last Modified: Tue, 18 Aug 2026 20:43:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b3948361fd942b9a35955294537601742f9e876ba58b86c73207445624983b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761705dde9740c1a6a7a4195aa343723b246af1db43da17e14d2a5eed7bc372b`

```dockerfile
```

-	Layers:
	-	`sha256:9e7756cc1b4f08ce6e90e0b23d810feb1274fc68746ca52ddfd088fc188602b9`  
		Last Modified: Tue, 18 Aug 2026 20:43:55 GMT  
		Size: 5.3 MB (5348918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2b134df360a2557652d4db0af7abb926b205dcb377d32d8d2839c9d81a9135c`  
		Last Modified: Tue, 18 Aug 2026 20:43:54 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
