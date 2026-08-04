## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:2c4c67b1b37d2d3bde65a52b9adb43099ada6d7fa682f28343a63fccfc2d682f
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

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:79a1963c2a6273543d87ed1ba45a99bc17de485ee677ff3535ff4c2cbaffc9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256913652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4e1c7e530aedebba9a9ceb8c73d4710b89faa64c0a1ca98f933eac3c36bd00`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:53:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:53:08 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:53:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:53:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e932759557b04271b2de598aca2f4dc62e15ec155cea803f3e251f266535242`  
		Last Modified: Tue, 04 Aug 2026 02:53:47 GMT  
		Size: 158.2 MB (158166940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91083f19a300acfe73dafe86334cf6cc0b28a17049978346d1ba5e2979b39eef`  
		Last Modified: Tue, 04 Aug 2026 02:53:45 GMT  
		Size: 69.0 MB (68964768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1431ac1a9a42f17903c9d4382ff57f8281159cae6b53e18bc24ee7a3a2e26cb7`  
		Last Modified: Tue, 04 Aug 2026 02:53:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004377d1a0213dca4b73a12ef34971888534a473cf984cdd2cb9adb8d99c2d13`  
		Last Modified: Tue, 04 Aug 2026 02:53:42 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:800d70a01bce37e6b6880a228a249ff0740fcf3fc3bda684cbdaa0722021a701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af89bc363e2d7c06b806b9edcaf280a77b5c8dc5b13fb9220bbd910b1dbf01b2`

```dockerfile
```

-	Layers:
	-	`sha256:bba4ec984322a13a0eb8ac6271e2d24f4f7097a83ac9d92e4d47cdd9296573b5`  
		Last Modified: Tue, 04 Aug 2026 02:53:42 GMT  
		Size: 5.3 MB (5259216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ab57628667dd7330f6409bf18ef0cdbdb8f926354a94f3e8cbe3acc034cfd94`  
		Last Modified: Tue, 04 Aug 2026 02:53:42 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c71b2bbafa22032ee08d79a71eed1b5efa760c8c8e125b72dc616e092e102f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255391107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822be996754a1c3e39f42abe76a8c15ad04102773865f0c580cfea00ffbe3131`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:53:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:53:25 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:53:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:53:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc9639c3e2913c9c6c8c52afa14baf36dd3939b6523dec3eed95b2e27e6a340`  
		Last Modified: Tue, 04 Aug 2026 02:54:08 GMT  
		Size: 156.5 MB (156461328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c769e410c34d7f506f0eb10acd6e60b8525e772f764bd34f64a0ca57a1fc2a21`  
		Last Modified: Tue, 04 Aug 2026 02:54:07 GMT  
		Size: 68.8 MB (68785031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f595765e9a5521d7ade320130c5cffd5be94ee3685e07896163ec2479556e99`  
		Last Modified: Tue, 04 Aug 2026 02:54:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c449d4db054e9b7231613ee191e70d26005e539395c1221a672ed2754d008e`  
		Last Modified: Tue, 04 Aug 2026 02:54:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:780bd2cd8a5209bce67e0dc6e31badf06a9dee3c0798a994048c299d602ab65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34e41aea59e5344f41448bc0e568be2802c230c3d4d13a9af0350df01baae985`

```dockerfile
```

-	Layers:
	-	`sha256:d95c2dff248b376250c4b0d33ee961af51e17e7540931563f86428797029c370`  
		Last Modified: Tue, 04 Aug 2026 02:54:03 GMT  
		Size: 5.3 MB (5264977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26b97e8354a9cb0dc8c4e277768b17304c189c9951e89358d0d808ec4f83fb59`  
		Last Modified: Tue, 04 Aug 2026 02:54:03 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:72cf1285e2f10b39b382e31e8bfce8554657da86040659389e15eebc78f24f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266329014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c368ea3247ade3b1efec62cddd29800fa2d10e772903d3377986c32846c95ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:10:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:10:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:10:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:10:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:10:08 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:10:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:10:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:10:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:10:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:10:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a937e048a952d8b3fee109791df88022bae8fed6c7b6a6548bfab158cf96a6dd`  
		Last Modified: Wed, 29 Jul 2026 18:11:37 GMT  
		Size: 158.3 MB (158343201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920e6a6fa2f3c3cb9881d8bf21dd09de4b6d9b2308cb65b2061056b16b305c89`  
		Last Modified: Wed, 29 Jul 2026 18:11:35 GMT  
		Size: 74.4 MB (74383289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c1eecffc2a1d97ddd87a14182df9ff8e47e57769d8915f7b57e4fc23a26060`  
		Last Modified: Wed, 29 Jul 2026 18:11:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d2bc6fd4f84c0bae2566032c938619682db6a608563df62d0aa277de96264d`  
		Last Modified: Wed, 29 Jul 2026 18:11:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:36ec40bc228e43b23a386b3682d54ea027473b0f2672a475fa9b9ccb3ba9456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ab2273ada5ab15b5c4c35ff65ff32cbc1b41dc781487268da42f16a165847f`

```dockerfile
```

-	Layers:
	-	`sha256:e5e8ec2cda9e5854c6123dfe04484ff7502a6d53790443e62b1ce7606a0d1fd2`  
		Last Modified: Wed, 29 Jul 2026 18:11:32 GMT  
		Size: 5.3 MB (5263555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1b1afd84fa9a4a1e2d759cb6444ebef3d49e85f306056f8a63f53e9fb052f2`  
		Last Modified: Wed, 29 Jul 2026 18:11:32 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:55c6a9cc1df23f16b3cbae95a2ea647b2e0bfde505b13d7657131d41550f2b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247181462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37447d722e7a20061bb88205c0fea5e715e9f3d17d029cb63001e50e29edfacf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:59:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:59:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:59:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:59:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:59:14 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:01:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:01:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:01:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:01:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:01:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c734b870786825b7b1c5032f0cd26771e82ba1a29e2d88cbda25956695222bf4`  
		Last Modified: Tue, 04 Aug 2026 03:00:50 GMT  
		Size: 147.4 MB (147388318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523c52b3a40d255880e875996ee1228f09a6016ef35071a2c350e9392baa2a97`  
		Last Modified: Tue, 04 Aug 2026 03:01:46 GMT  
		Size: 69.9 MB (69945466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b278e18df25bfdc5e99889bf8d7ebf5f0447e995e08b56ec81c2603b6866284`  
		Last Modified: Tue, 04 Aug 2026 03:01:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1237a9c0da83bf5d6cffb13f040d75760ab414a02d7b262e399531d0e80ed164`  
		Last Modified: Tue, 04 Aug 2026 03:01:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8d5443fae952d9d5b6640940b89d4a88f8013036e5af31a902ba8b3f5eaeba46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39a5118e8ce5ae5a25ec9e960b0fdf3a56e42595294600c5dcc2bf800d069ea`

```dockerfile
```

-	Layers:
	-	`sha256:4018c1ced3cc922ebac5adc37bafb00c5c9f89686b228d51eef13c64bf6eae21`  
		Last Modified: Tue, 04 Aug 2026 03:01:45 GMT  
		Size: 5.3 MB (5255140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcb683662b2dc16d7e78813ca16a1adcf99e5865fd7e0552c7d5a460710f15eb`  
		Last Modified: Tue, 04 Aug 2026 03:01:45 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
