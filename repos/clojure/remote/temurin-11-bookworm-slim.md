## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:55d454f8d69c6251f2cb50bee23c423be431697675833b3c50e7f1023c9601bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8c44cf7431e34a2aae757b82342de01fc92df179a88b8374ada5b72b1f696ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240682795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278187f9e0503875a3185d1fab3af4803bd3a2c478d3d54b63bf8480ac70fe97`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:09:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:09:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:09:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:09:40 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:09:40 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:09:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:09:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:09:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48190d3acfd094a366b912a56f0539c486eaa19c5e9d8382aa308b046a924946`  
		Last Modified: Tue, 24 Nov 2026 05:10:17 GMT  
		Size: 145.9 MB (145923066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8731551206f1e1cd4d94dd00bf4a827c9fa017c9dafc00c84c2b5d79b7903fb`  
		Last Modified: Tue, 24 Nov 2026 05:10:16 GMT  
		Size: 66.5 MB (66511127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2c7cfb6610e1c86d056cc1d06a4e1e91fedfc4aed64e582bd6403c2916d003`  
		Last Modified: Tue, 24 Nov 2026 05:10:12 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:697093aac34ac02b082eb8a73a2a4534c2f8f8d25e26c2f24db61e9a2796afea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4d0497367cc287880f704553c6a6658b9e1a8e8403357987eb9b24fc14dfad`

```dockerfile
```

-	Layers:
	-	`sha256:886aa5c2fd690a398fc23b1eee03b26457daeb8705dc635d05985f6ec3b99344`  
		Last Modified: Tue, 24 Nov 2026 05:10:13 GMT  
		Size: 5.1 MB (5137625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f17c49963b4120a50152eba46ff3cbf8031baf1e0b5b8e534a265e64d1addf05`  
		Last Modified: Tue, 24 Nov 2026 05:10:12 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:838e33e4a99613a027408a1ad468f17a7aaf2641780d49ffad3a91c1237f4eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237263103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c939aa7bfbdb667958faea95805d9fbeba49512c37331e859f56a18c44cc6e50`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:17:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:17:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:17:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:17:27 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:17:27 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:17:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:17:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:17:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf5a37d77043c646d4c83caf1c2a1539dd767c5e800633880d82f6dde0b4db6`  
		Last Modified: Tue, 24 Nov 2026 05:18:06 GMT  
		Size: 142.6 MB (142621117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bc2b10cdbe450e73bbf7915af579feb05004643d85d52872970c6d6e2126cfc`  
		Last Modified: Tue, 24 Nov 2026 05:18:04 GMT  
		Size: 66.5 MB (66497040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593ba04ff7f1a070dfcd908bed5fdcccf8ba799bbc99e6ae8db428e2c32f57b0`  
		Last Modified: Tue, 24 Nov 2026 05:18:01 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ee77ad75a373bb222ff1cb92f21ff419438c23e43a2a6c51e7dd57b9fe7ad506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5158543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a04fa2b127c786e007375f3603507527cb00ff90724bd4941691d3a22ee9bc`

```dockerfile
```

-	Layers:
	-	`sha256:cc24dff680f10260c1858f9492692019a0f6564bb438c2cbe7bb03d0ad40b63a`  
		Last Modified: Tue, 24 Nov 2026 05:18:01 GMT  
		Size: 5.1 MB (5144004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:553b217ba100f38fb28ecc503a880c79baa35c9ce4b889e428dba8aa6be79152`  
		Last Modified: Tue, 24 Nov 2026 05:18:01 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:87c70de3eeae34e840c2bd608897021db9c6125ad60bf2d758492e78f09d0d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236700354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9ddf5c1dc17bc44934bc2b46239775946ef1d9014a0cfca6808ca656e7a17c`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:31:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:31:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:31:07 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:31:08 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:31:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:31:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:31:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18a667ffdf032c867d1e805c2bd2668d817db1c470cf9c38b88f2e37d30a432`  
		Last Modified: Fri, 20 Nov 2026 01:32:35 GMT  
		Size: 132.3 MB (132272159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7d00f0d7d00eb907cd88d253147edb50a06a74ee2818b9687e20ace8dd16a0`  
		Last Modified: Fri, 20 Nov 2026 01:32:34 GMT  
		Size: 72.3 MB (72333987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4a0c8971ed28bb0976f41508010618b1adac6b9d1829729ee77795a2182eff`  
		Last Modified: Fri, 20 Nov 2026 01:32:31 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:93bc81ac348a7829876b570d14ddb7e959db4c5d72c5d1cc2b256a2411989bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5155391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e42eae75977f3b9b9fc5255598e5650c26ec174d660a8311962dbcf6209503`

```dockerfile
```

-	Layers:
	-	`sha256:5e9f056c8f7e1d6c3ef6dad7a1ead50a3d56974ff2675f2b6509a2733d093023`  
		Last Modified: Fri, 20 Nov 2026 01:32:31 GMT  
		Size: 5.1 MB (5140922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fceaa80d0e037a7a1911541360144dfdc08bccea42867d558e812561502980e4`  
		Last Modified: Fri, 20 Nov 2026 01:32:30 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
