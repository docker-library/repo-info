## `clojure:temurin-25-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:f81e9859b470054e24479bd3717789a5d954201235efa133f6732f7ac3d54746
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:dfe88bee47899369747876d355bdc7c98eb7f527787b91dbb73f6de8dc230ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212930646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9785753e0844d34acfe563852e7192ac3c384a3c8429089b45b104e07e29a6a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:03:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0333b07a5eea0a4c311ad4bd2e724c8a9b7588e09207d0d7829381a8164da44`  
		Last Modified: Fri, 04 Sep 2026 00:04:11 GMT  
		Size: 92.6 MB (92615119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ab7075b9c2ffeaed1bac290064779f2da802b902b24b7e03521321131bc86b`  
		Last Modified: Fri, 04 Sep 2026 00:04:11 GMT  
		Size: 66.5 MB (66537093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4882a72bd86a974ce0b9c5ccbada05b23ebbb1f1e9fca4db9990949806aec526`  
		Last Modified: Fri, 04 Sep 2026 00:04:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025960f2f386aacc18f97a84efb9c0bdf39ce4169afba157d5168380d563e25e`  
		Last Modified: Fri, 04 Sep 2026 00:04:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ae66412c7ae92ca8b9d81ebd985647e43270dabba2b11950481d02d3731a7810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aa6631d34f7e1e31629da542ebeb01e6c11fb65f526011612e9d1b30ace075e`

```dockerfile
```

-	Layers:
	-	`sha256:659bd49138cd6e605f35eff12f0f75907ecdde79c03ea65696b40c4269784996`  
		Last Modified: Fri, 04 Sep 2026 00:04:08 GMT  
		Size: 7.4 MB (7378722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5182af5141eb79ca6234641b4867ccf25dce62fe90c68be45c3dd58c5a281b47`  
		Last Modified: Fri, 04 Sep 2026 00:04:08 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a5c31407e4549da14fad8c99391f3259cf7ac84c23289469bba1f19d7546e899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210495321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1abf38fcb3f4e6702702f9705055246866fff018590126cb46e23249b3f91d5d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:02 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8cf716716ef9048e6e0c2eac7b40a9ee42563b434689ae8ef3c3cb59d89e10`  
		Last Modified: Fri, 04 Sep 2026 00:08:36 GMT  
		Size: 91.5 MB (91532208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a0abfe67bdd21b650c22ce20e287981996dedc9a44d266df954f4d26babaf`  
		Last Modified: Fri, 04 Sep 2026 00:08:36 GMT  
		Size: 66.7 MB (66700727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bac93e7510ac46456fd9c5ae4153fa31a6d07ce9468b0dc1d3bd2f055f0fed`  
		Last Modified: Fri, 04 Sep 2026 00:08:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba97026a73cff9bbfd4a59c4d6792f87ec7fdce526725e5e9b8be28e5c6925f`  
		Last Modified: Fri, 04 Sep 2026 00:08:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:64c14efc3bd8217df441293d1579a50866ee505cf362fccbd6d17098d6ed5c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b758bcbbbf52df8393ffbee9425943e89221aec6d14fe31667c8a45aaff7676`

```dockerfile
```

-	Layers:
	-	`sha256:dcc19f3c9baa399cf1e6cf180b215e8337d4da5fe225b673174d5d3c8ab312a5`  
		Last Modified: Fri, 04 Sep 2026 00:08:33 GMT  
		Size: 7.4 MB (7383842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:217e48bd95f8115441c2768b1cd6a1e2e1a47158cb0a44fc001802be6833fcb3`  
		Last Modified: Fri, 04 Sep 2026 00:08:33 GMT  
		Size: 16.7 KB (16743 bytes)  
		MIME: application/vnd.in-toto+json
