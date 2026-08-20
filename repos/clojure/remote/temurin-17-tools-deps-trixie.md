## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:13c6cac3629678139a3272c5d23c8f89db601168454b3c1beccb867a2ea6223b
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

### `clojure:temurin-17-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:233dd886d27bb3763aa353308f4b0af1cd4c409f1d627b1809e491e4a85debf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277757708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92238a09f0d3619df77a799412871638d615b80ca05eaeaf395cb9af83d7b21f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:45:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:45:13 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:45:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:45:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b33979c44d7f9681cd18284ecedd46c9b9b1eadb01074fb074bbb4dfb985ba`  
		Last Modified: Tue, 18 Aug 2026 20:45:54 GMT  
		Size: 145.9 MB (145905453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f75f4f0fb677ca136e27b5cda745d9f83bfd90aaea10e7e730aa3481928b53`  
		Last Modified: Tue, 18 Aug 2026 20:45:53 GMT  
		Size: 82.5 MB (82538902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aab5a814a2e05ea2925158572773686385e88a140d6c8ceb92ba08cb24da742`  
		Last Modified: Tue, 18 Aug 2026 20:45:49 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb44ea67d52d93b0fe684fc696dd0c84985c39c0b6830c4739253b1101169614`  
		Last Modified: Tue, 18 Aug 2026 20:45:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8d113ad79e1294735c34125bfb7d924cc4845dcf9a6412c3164d59211f536ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7484801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a4469b61f2aea90ee1815da8cf3ab7661f623c282af23eda5c5b1cd344fddb`

```dockerfile
```

-	Layers:
	-	`sha256:0e781483ede9bb4bbfa742e9251c4e57f707adf581c65121bdc71973dc951b33`  
		Last Modified: Tue, 18 Aug 2026 20:45:50 GMT  
		Size: 7.5 MB (7468893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9fbc291530cdb27ba5a2b3202ace9ade3696f3a9c0b7cbff6a6982888543093`  
		Last Modified: Tue, 18 Aug 2026 20:45:49 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6ee1123decd3dc34fa580c93c89d0c33713ec9c2ff70a24be80b8bb2555b91ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276758722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bddcaec0019a539ac112d4e34d1fd10e300727863ac8c60ade8b8731f86cf9b1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:45:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:45:54 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:46:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:46:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:46:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:46:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:46:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02fdb0460ec4319e480aa9f51249ed2fa4eacb22134954cdb92e683fd946fe6`  
		Last Modified: Tue, 18 Aug 2026 20:46:37 GMT  
		Size: 144.7 MB (144724299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ad8a0770f75201255be13634ac7003b857098f4b6ab6307b2c87ad3926a282`  
		Last Modified: Tue, 18 Aug 2026 20:46:35 GMT  
		Size: 82.4 MB (82359532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498ccf3af2149da97ef651108fe3bf44292ebaf4336e0ce28114d1c46a4996c7`  
		Last Modified: Tue, 18 Aug 2026 20:46:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37476a4a666a03cf4a56f637e597bce32da06c647aae25d167d92317a62fa52a`  
		Last Modified: Tue, 18 Aug 2026 20:46:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4e0f6f2bbae5e55398124430435e57900c7074282834e84cd11d57979bee76ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6990f2abde634afd9a059b1dca930721d9b3158ecc83aba8e5ff9c17491c9c7`

```dockerfile
```

-	Layers:
	-	`sha256:7d5a7a3bd595b33ad71ae777f3f25a21e53e01163873ae9c0e62a23c1ef1395e`  
		Last Modified: Tue, 18 Aug 2026 20:46:32 GMT  
		Size: 7.5 MB (7475286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21370939d4f0151bfc9f7050f34b0c9b08eaa788be8d8843041d7bb6336f3277`  
		Last Modified: Tue, 18 Aug 2026 20:46:32 GMT  
		Size: 16.0 KB (16024 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0a71a179a51372e63119cecc177bb422aa2c440cebee462480df8a5b6d6acf03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286851398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b70ccbf1ac9786426edb6935044ad483e664b74f9d552aea562d1b6ff5863a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:08:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:08:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:08:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:08:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:08:51 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:16:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:16:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:16:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:16:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:16:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aaf7ee4a7ce8db72b4b4150cf96c296b1885780495fc941d3703783f6350c30`  
		Last Modified: Thu, 20 Aug 2026 01:12:14 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddda7adfb5b4d36f995edec5c0969f17cb493e3c4e881fe4abc0cb5c7ea5021`  
		Last Modified: Thu, 20 Aug 2026 01:16:47 GMT  
		Size: 88.0 MB (87950520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca251fee42b9154c82f3e4644aacf17415c9311f7d6fc651c82c0e844340c4f2`  
		Last Modified: Thu, 20 Aug 2026 01:16:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a636baf14651caef53174c4e0c83940d598aec3d00b01d95c7a37fae104dff2d`  
		Last Modified: Thu, 20 Aug 2026 01:16:44 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a2294f6fdab8601f300a08e8a9dc71fa8bd2d3fec63b7297c3c7bc62247ba03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4571e6e4448000e4044fa7bc06632f82de4039d1b0a84b0d547ca091af46550`

```dockerfile
```

-	Layers:
	-	`sha256:eecd5b823cab261383966fb7a07d83fa4b905a3f7c204f0b79ac8f4810715029`  
		Last Modified: Thu, 20 Aug 2026 01:16:44 GMT  
		Size: 7.5 MB (7473314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55285814da60292b883d14c18a6def607f828f750b7b360dc439dcbb5f3aded0`  
		Last Modified: Thu, 20 Aug 2026 01:16:44 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:ad6fd9c4afc536ec6618fd8977f0db43822a7d50c11cb9512cc8434c29a6944d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268812581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc2a78a21fcf55fb354f3fcdd350a1ce73dc73b3b6d4d3cb8f884322ecc0d1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:34:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:34:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:34:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:34:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:34:50 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:35:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:35:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:35:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:35:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:35:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3c63464691add89d5d913e4cf077cd2f0c4a8123f608024fa4fcb2575941d4`  
		Last Modified: Tue, 18 Aug 2026 20:35:39 GMT  
		Size: 135.9 MB (135910397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a7775bf9d1fed45db204cc455243b50e729ee01a4937a180826eba20352128`  
		Last Modified: Tue, 18 Aug 2026 20:35:38 GMT  
		Size: 83.5 MB (83519718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9cdaeb0bd769dfedef8541475b4803405d25fa67a9d879b449ee0757930f82e`  
		Last Modified: Tue, 18 Aug 2026 20:35:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748453f379ccc0c824fa2bb45307ac5a2755cae2fed623a6329ebf9995b676b9`  
		Last Modified: Tue, 18 Aug 2026 20:35:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:45b08bd38f44d4ca770bda8b990bf9344043eee0943d4ba0c2490de4b58bf320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7480723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13548a64ae561992b634ee8cdbf926744453c2b3ac7c3a3972033bb15fdf3fa`

```dockerfile
```

-	Layers:
	-	`sha256:5e574f1dcd3100a80ab461a37d6dc900e74133b5a6c6d93640d1ff9d21c3e5c8`  
		Last Modified: Tue, 18 Aug 2026 20:35:36 GMT  
		Size: 7.5 MB (7464815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df3b59ab510ca4b8baf8fd57ba999775b245e6869aa33cc1582b0113d8bbc7f`  
		Last Modified: Tue, 18 Aug 2026 20:35:36 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
