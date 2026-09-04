## `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye-slim`

```console
$ docker pull clojure@sha256:e40b8575852965e617a12f32fa44e81a4142e8f4485b9d1444d1d3bcba33cba3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b803e9ed714708c5a3911c4fa95c2454d52b2054fc310c50a8b6b94abbdb5ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232211343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697e0a8e8380b181723c1ac2ce11718e09830623c29126fcbd48e1941063c50f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:02:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:02:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:02:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:02:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:23 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c96537d8cafe441f23aa175db220fe15054a827e6537c352435cdba1d6ed451`  
		Last Modified: Fri, 04 Sep 2026 00:02:57 GMT  
		Size: 145.8 MB (145822644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9be2384c96190ffd5f4784d519ad3c91dbb0e3fca40c378051774d4e8c6787`  
		Last Modified: Fri, 04 Sep 2026 00:02:55 GMT  
		Size: 56.1 MB (56127932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469a907cdbba6ee283cdfcfcc701019a9ce516886e3239df07450e55da5602a6`  
		Last Modified: Fri, 04 Sep 2026 00:02:53 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8bfb1a1c0ad93db0ed541224371b69633f9142e8577430a65183c891d3b5e`  
		Last Modified: Fri, 04 Sep 2026 00:02:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1db9cc6bb6955daa2c0f67eed56f3dd6b876a69e282c35d65bced79e4325382e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698887b074305761c01a00b3ebf274fb61d0c305c28c6a75fb0fb2cc171f7b7e`

```dockerfile
```

-	Layers:
	-	`sha256:5c629280d977ff01b1dd0f4e5e7e4cade24b53de487a5762c714670589b4b125`  
		Last Modified: Fri, 04 Sep 2026 00:02:53 GMT  
		Size: 5.3 MB (5323050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:435e413cf22350ead96f6e5e6e036416d6fc13c912abf2d723e7d3ed9f91e9fe`  
		Last Modified: Fri, 04 Sep 2026 00:02:53 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:44a8b49d45cc5549ed06d14ba5d62f566c69d8d83340f06f169ac8ba5a4d2849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229685113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6347b772d5bdaaa66ec22321077525f27bf60fa0a6b7dc7e27f441cc09a00075`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:06:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:06:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:06:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:06:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:19 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:06:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:06:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:06:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf19f4f481235b163dad5ba9340d34ff20bb439a1eb91f350538c68a06ebaed`  
		Last Modified: Fri, 04 Sep 2026 00:06:57 GMT  
		Size: 144.6 MB (144647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5b2223124f267491acf3f2f491242265737382e8545b20501841d085622602`  
		Last Modified: Fri, 04 Sep 2026 00:06:55 GMT  
		Size: 56.3 MB (56287520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5cc8be4c3490115d0ffb28b3151a90fe171b9f75cd85b17ac3c838c7c40a9dd`  
		Last Modified: Fri, 04 Sep 2026 00:06:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b0aa4e86b50469a75c3f2cffba9a18885f69c57ed40d2b8125b4c4f58a0a64`  
		Last Modified: Fri, 04 Sep 2026 00:06:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ec55c12071c4e259be0bfa2c766c5c964d2169181a713bac3145964e0915dc32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5344890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0244a9bbc9a959f32bc45790ad6569966255d48cfa0a08ba4034e6e67c5982b6`

```dockerfile
```

-	Layers:
	-	`sha256:acc13745411ae4208631c3530fe06b403e5e1a1ef04e89ef44c6b37c83a0ad0e`  
		Last Modified: Fri, 04 Sep 2026 00:06:51 GMT  
		Size: 5.3 MB (5328782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5af38a9d4005e57abda8fe6e146449de5fe5795927a768eeb90d466ec9bf3f8d`  
		Last Modified: Fri, 04 Sep 2026 00:06:51 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
