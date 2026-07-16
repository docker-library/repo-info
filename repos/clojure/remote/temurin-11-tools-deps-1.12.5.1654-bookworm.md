## `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm`

```console
$ docker pull clojure@sha256:ba6e6828a8f6606e8d1179b8c0c9514a584c35f0f791f630391faab61264fabb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:6d11ea02eeea789bbdb60885cc88755aa100271a94887a96b16965348b616b67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272513983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2c4e8a832b10fb755eddc0ec2f461d9ceea1ee47aca62cd0adf14b06e641e7`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:30:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:30:53 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fdb1e8bf68405f8c65604585b7e5ae7374fd99b332eadaa6078cce28041c982`  
		Last Modified: Thu, 16 Jul 2026 01:31:31 GMT  
		Size: 145.9 MB (145886148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8d101fb9b8142dff2acac673768e85df2f14690324e4df3d1f9de457fd614c`  
		Last Modified: Thu, 16 Jul 2026 01:31:30 GMT  
		Size: 78.1 MB (78129788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c6d0b69f3fd83487921e9c5eda166da32d479468da69a53d2549c451df3094`  
		Last Modified: Thu, 16 Jul 2026 01:31:26 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a6870af4f2cfbd0a5468aedde3febd6ff712d6d26482b79d7c4917308c123e81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7410049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:625cff29c17bc7be4ce768f2dbe6202d066bf9de3a5eb09fd7204c6ccff811ce`

```dockerfile
```

-	Layers:
	-	`sha256:e452950bd1e095cc1df2bc01ff25a4a840da1b9f3804a4b757fdadd3af76e433`  
		Last Modified: Thu, 16 Jul 2026 01:31:27 GMT  
		Size: 7.4 MB (7395686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af7fd042a3e50956b9aceaf7b0a89d9719073c3cd69431aeb5e9876a8dfd1a34`  
		Last Modified: Thu, 16 Jul 2026 01:31:26 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:407990926d24f09a680d9b85c16b4fbffc5789ef7ca55faf8b61f6bd65d763ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269088047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ac423da4e0a79d76afb452817f65dc0cc70c6b544c83e3897ff69a5d886a32`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:22:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:22:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:22:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:22:17 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:22:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:22:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:22:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:22:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924bb97109c3dfe29ea0fd5879a94113aa55538a8e1de145165e2f29df88a08e`  
		Last Modified: Thu, 16 Jul 2026 01:22:55 GMT  
		Size: 142.6 MB (142582178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9726213196879de25d12baf24c4179370eaa7f44034988bb47814a5394283a`  
		Last Modified: Thu, 16 Jul 2026 01:22:54 GMT  
		Size: 78.1 MB (78121538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a9d9810da6891a39de9daaccb17b409c61cd3711a066f0e80111ca5e86b378`  
		Last Modified: Thu, 16 Jul 2026 01:22:50 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0dc1d99db31449e2c551a6110bbe2f7717c30cc16be0c1b0195ffb6704fbc44c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7416548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020065dbf5decdebd8e5aae74717764f85bb7175115335761e0031daa34a8f10`

```dockerfile
```

-	Layers:
	-	`sha256:1c1e8f3f9f8bcc67789fcb97bbbe81a5dca934c8c1bad5dd16b948b6dbc7835b`  
		Last Modified: Thu, 16 Jul 2026 01:22:51 GMT  
		Size: 7.4 MB (7402067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:149ce66687f21ec8b206483438487f9ec27cb2d6af557f9cf1c80ceeca61bb25`  
		Last Modified: Thu, 16 Jul 2026 01:22:50 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:91bdc3163f4125d023bb84273766183dcd974fbac410b3733fab073222a2bf38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269412258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9762e2adccd48b3854470a92f4ec9bab16295a580159233e63173fcaf984eb8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:10:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:10:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:10:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:10:42 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:10:42 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:19:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:19:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:19:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9f33be61fa38d606238321568484fc178182e6226b8fc95a8a21d56817577b`  
		Last Modified: Tue, 14 Jul 2026 08:14:12 GMT  
		Size: 133.1 MB (133110168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ae4def1622040aceb676eedb5341011bbc03919b8ac5f5facd3dff597ffc23`  
		Last Modified: Tue, 14 Jul 2026 08:19:55 GMT  
		Size: 84.0 MB (83959612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dee6de1a050a1dc8fc43693c87723bd9c4d9f033dec92b29f1ede77e6e0cd0a`  
		Last Modified: Tue, 14 Jul 2026 08:19:53 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:46d6e846039b80806560e6c98ac3729c0af7d0665ddcc7873c5809315817647f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd97f03352a6962bfd6f94920e16ee9ade49b2c9410d9011ce1614b68511d0a`

```dockerfile
```

-	Layers:
	-	`sha256:c2a14bd4f3ee670874f404cb1c04834863a3230913c71d4bcb1dd01de80f16ed`  
		Last Modified: Tue, 14 Jul 2026 08:19:53 GMT  
		Size: 7.4 MB (7400287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf4bf8e4ed14d99f531705f0b3eb05c750c981a4f86910e80a3ca4ba6413cefe`  
		Last Modified: Tue, 14 Jul 2026 08:19:53 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:e246d60480f92a18e11057bcfc0d3018ec763b1c554a5739ab092f0e54d59dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250748088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5301b2cf8b7cead45805161c7a191b53c6eea40ee0c95f40f682d96a642ff22c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:43:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:43:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:43:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:43:35 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:43:35 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:43:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:43:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:43:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189a98ae7919919228f692c97862cfbb046c99835e2c431c75a8fc11040909df`  
		Last Modified: Thu, 16 Jul 2026 01:44:18 GMT  
		Size: 126.7 MB (126651675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0819bd3177ddba4b2a93df6193735ca31f9845f35944bad504096550df42e3`  
		Last Modified: Thu, 16 Jul 2026 01:44:17 GMT  
		Size: 76.9 MB (76938488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea0ff72918bf97f94d87031a93c638117b019c42bf73f00618943607e72716a`  
		Last Modified: Thu, 16 Jul 2026 01:44:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:151082f98feba78aa519da6dc22424adf2372ef7a06dee81e6a82c2d545aadd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc622520b709202c8c8a189e85ce243b78cfd9f1ed2e7e841a9e1614389f6d4`

```dockerfile
```

-	Layers:
	-	`sha256:4475cdc3d6a12f612143142263377b03ce031b011ee7b8b977593abd01aa6d97`  
		Last Modified: Thu, 16 Jul 2026 01:44:15 GMT  
		Size: 7.4 MB (7387009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abfaf5c06ccb906df27575446c850bb59986246a61237fe71364ae481132897a`  
		Last Modified: Thu, 16 Jul 2026 01:44:15 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json
