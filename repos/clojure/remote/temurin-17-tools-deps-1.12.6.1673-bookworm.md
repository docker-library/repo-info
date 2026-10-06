## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:182dc02a7d7fd63523a49fe5637c292ae73842af505a6c1a27b10bd0f65e3ce4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:592017ab35c478fb733a0959417de6b326cd4edbe21401cf211a4aa038828a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274631603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7777e80cf799e007daf59a8cd8d1fa864170a58999e699d0acf1bd12db99183c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:12:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:12:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:12:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:12:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:12:25 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:12:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:12:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:12:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:12:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:12:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79f30437f3b4258e254e830045d74e91c8fec6fb195cd5e69ebd66b5fc81991`  
		Last Modified: Tue, 06 Oct 2026 02:13:06 GMT  
		Size: 145.8 MB (145825478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e5aad7efbfbb70194633e0129a04e4bda7fc8b53c24024d429b179c8eec8d0`  
		Last Modified: Tue, 06 Oct 2026 02:13:05 GMT  
		Size: 80.3 MB (80287061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32fbc0cdddda4a94bf67726a3aedd7a89f611342edc12769d7bdfe46c51db2b3`  
		Last Modified: Tue, 06 Oct 2026 02:13:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557a0708d32134a51c09ac09a78ecf661a4bd0a2388c567e89df3913b4c9ed3`  
		Last Modified: Tue, 06 Oct 2026 02:13:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:cad247a08893dbbfb29a7870093444dd0d79bd9b0e07b6f5f04ba53472d83324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba69e3c94f110058fa195c51f05b0dadfc1413605b5bc3fded7ff3cfe90ac50`

```dockerfile
```

-	Layers:
	-	`sha256:cf16513bb5802a9aaad8d0865264e42eca73a5e914a554dcd7c0dddcd3bc569c`  
		Last Modified: Tue, 06 Oct 2026 02:13:02 GMT  
		Size: 7.4 MB (7380640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c65c2ea5d3074545395cb8cf62ecd96870f7ef29e45369c9213bd93342fb88a`  
		Last Modified: Tue, 06 Oct 2026 02:13:02 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a4cc65682fbdc463aa00d210b9ff61736705651629d2fca9e32153818018dd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273282470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9951b9a60fc03e6469e882b2ed266be22fdbc7d126e3119379fc8800bda143`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:18:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:18:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:18:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:18:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:18:07 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:18:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:18:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:18:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:18:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:18:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579dd18d6ace333318235011b4c0f4586126fdce02db0d8bb2cbd5bdc0fef182`  
		Last Modified: Tue, 06 Oct 2026 02:18:48 GMT  
		Size: 144.6 MB (144648241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bcb9c42073546b6b92c376b32571caf47f7ac1797467f5aa1d935a697edd0c`  
		Last Modified: Tue, 06 Oct 2026 02:18:47 GMT  
		Size: 80.2 MB (80231634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f15921db35b9beba01fb127444bb6d931ede357f5a53238041d41d44810568d`  
		Last Modified: Tue, 06 Oct 2026 02:18:44 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8c214ae26ad08cb13f3842a0dc098292b478ccec4dbd05213b35461c598c8b`  
		Last Modified: Tue, 06 Oct 2026 02:18:44 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:becd60d4fbe71849722ed9d35e3c8ef7dbdc970c823f30793b7bae1387fa76e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ca0b538070bcc4329255b26ee4a9b4156fdd55275288bde3284cdfb52c89d9`

```dockerfile
```

-	Layers:
	-	`sha256:f2daeaea9f9ac0dbfdc23de1da16b21f1fe02ff356385ca30317071669af6423`  
		Last Modified: Tue, 06 Oct 2026 02:18:44 GMT  
		Size: 7.4 MB (7386403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ecbe67164cb3aff410a660784bb0ff5b93a3badee049ec44d6ffdfae3ba05f5`  
		Last Modified: Tue, 06 Oct 2026 02:18:44 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2c75dc93530e9aad09df7de1c4e4b724bb74c125c5807760f467de9f766b4223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282019803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6570c34266c8a260ee64ecec449fe6dd0547a5b3b4605ad18c6498ebcbee747`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:56:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:56:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:56:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:56:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:56:32 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 08:10:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 08:10:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 08:10:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 08:10:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 08:10:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe6b4f9947e159345c2a5cc07a4b2be3095c06f0324d673a007216e919ba83a`  
		Last Modified: Fri, 02 Oct 2026 08:00:43 GMT  
		Size: 145.7 MB (145671507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285756cae862066980c479e636a25093660f32f82a98174332f73756c82ac2aa`  
		Last Modified: Fri, 02 Oct 2026 08:11:24 GMT  
		Size: 84.0 MB (83997946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb5237192ee182d930383548e9cf9c00ec1e4755ef90666faff647ed0204a365`  
		Last Modified: Fri, 02 Oct 2026 08:11:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601709ead7c34594922cef622e6192c2737fe7e2be20b985558996324dada175`  
		Last Modified: Fri, 02 Oct 2026 08:11:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f5b3aa8c1d57cb0944d224511c6a8b1b95127f2b8f584b3bc6da31e2e8179746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71642214e8772ba3c417d7b808616cda30b621d52ee5794318f4ef50ad6fd8d`

```dockerfile
```

-	Layers:
	-	`sha256:18b1b44c4e8f4eba34327a2451e766542b18b5f0d54d494403182042bb918ba2`  
		Last Modified: Fri, 02 Oct 2026 08:11:22 GMT  
		Size: 7.4 MB (7385854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f3228584352b97fea697842442646f5c4093c2e91050f9ed00533a34faf9f3a`  
		Last Modified: Fri, 02 Oct 2026 08:11:22 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
