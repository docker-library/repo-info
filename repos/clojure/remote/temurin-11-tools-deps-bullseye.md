## `clojure:temurin-11-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:a8753da761f22cf5f1e1d489e3fd200781dd9ecd0bc7ee1d92ced1640052f45e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:4c94611c1ce8b64fa071e9ea20e79033f55a27503293360aca785e059fc39a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266182105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec284f10df521ce10910b1326cdfdabec26491585aefaf184c7ad0eb7ff7356a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:55:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:55:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:55:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:55:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef12a51ea9a33dcadbe2c70b2742178d38fccecb3e7ef127f2af2ec6bbe2dd66`  
		Last Modified: Wed, 29 Jul 2026 17:56:12 GMT  
		Size: 145.9 MB (145886159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245d19953838197dabcfad0a36d3bd030411e68a02296fbe963822d3b1273980`  
		Last Modified: Wed, 29 Jul 2026 17:56:11 GMT  
		Size: 66.5 MB (66518723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a63aab389c195b29ccaa3dbaefe881579d710a2d7c381b743c1debbc345c031`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:aa1d43084a156c63c87e26b8cc854344aa5532ef8a85dd74280ea5e10ea24c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7439327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec8cf22cf483b827817ccbe5f04e977963769a03cb0b9997f9085d843c70fe8`

```dockerfile
```

-	Layers:
	-	`sha256:235bee6362b44299cb4a522f430dc98c6eda85599af8457016c899ba4c602769`  
		Last Modified: Wed, 29 Jul 2026 17:56:08 GMT  
		Size: 7.4 MB (7424965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0734387a3674d6933dbe5522188a9ffa3dc4291c086e88b0b7d6613f855d6c69`  
		Last Modified: Wed, 29 Jul 2026 17:56:08 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:90227e9f8706c0951a9f9caa39c7cfc039ba70aff1eb36a4023af6262cfdd3ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261529066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e69af8f2b4db211588e49fa9c930d0739759ecbe5db6a91696fbf9edc1e058`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:04:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:04 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d5bf5cdce4df46b7ce865f4abb3d2837075405cb657cf812f427afd15b190b`  
		Last Modified: Wed, 29 Jul 2026 18:04:40 GMT  
		Size: 142.6 MB (142582143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d689ccb240d80a801ab3d3af53c3ee699fc78c3a2508be997f990e7539c216`  
		Last Modified: Wed, 29 Jul 2026 18:04:39 GMT  
		Size: 66.7 MB (66685386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b70439204f562c81bb5ac31abe7c39def56de2374875bf4e31d8befa4a93214`  
		Last Modified: Wed, 29 Jul 2026 18:04:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:a7944209f7c9f876ececf5a755238e94253fd4cd41cc28422be5da0e0b78f302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767564818369f2339d19da176074fcbc2cc71a4ea22ac15c8c5f69fa54d83298`

```dockerfile
```

-	Layers:
	-	`sha256:ea7a61ff23b2a23b2856068f2cba0d29594b9961ee08346d5f978bf5d7c4b805`  
		Last Modified: Wed, 29 Jul 2026 18:04:37 GMT  
		Size: 7.4 MB (7430682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aec3b26cdc9e5a83e2968b504586664adedea77be0bc424540d824079f4f33e2`  
		Last Modified: Wed, 29 Jul 2026 18:04:36 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
