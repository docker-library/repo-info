## `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:0e7b6b8018ee1b0c9b529204c9ec753b249f041342e24f0a2d0154265e52a53c
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

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:594226eff5af6f624821d25a4a35a711b5faa181d063637275d5a97f58e18457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240797304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b22c1aaf3b0376f11e5ed2313b7523eadc4df857c6de99d4ac6afb76539f098`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
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
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:55:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:55:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872d8b89447a2b857b0248e4d5d4195606608d158e015116bf14c63fa065195a`  
		Last Modified: Wed, 29 Jul 2026 17:56:11 GMT  
		Size: 145.9 MB (145906320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd6fc4e9d6ea58709ff117a7f2907115dccd484d7a5af0da2b599ffd7e4be8b`  
		Last Modified: Wed, 29 Jul 2026 17:56:10 GMT  
		Size: 66.7 MB (66657298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394897f984c8e5464aed967dc38d3c68dbef7b6e20b722d6cee227d246b24e6b`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d15e90a545cc8c506bcb3d011f540ca5259e7c4421c0db22acc2ce6fd7404e`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dc926f4e8783c8599580aeaa2f0818cd1266fa12735071697029014a56fc9f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5130025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cfece36d650dc57d8a990457f7d81dc82cb88f9ccfc2296b6e2c82fb79dd7fb`

```dockerfile
```

-	Layers:
	-	`sha256:8974fefb106da186db91ce73c57827088809c26fb8af2f7a0f50b4825bdf800b`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 5.1 MB (5114035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c64e248b174ae53a2b0ce50f409ff8291bd70881b03d4127df0668a783155040`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fcd41e917f4bf15019e65c6faab5824ffe69be82889faceec49664deb7581d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239491144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e50a51362e27c7d2d932c191e90ccc4b66187f150321fcd10f12cc47a3b86b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:04:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:21 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:04:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:04:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d0db640626c79ca107e20cecb0c7acb8e29189c66144620f4443088324e89c`  
		Last Modified: Wed, 29 Jul 2026 18:04:57 GMT  
		Size: 144.7 MB (144724317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fe84f8e37b50575cc93951d353064ab1aa85f716d7ae5283926b3048acb31a`  
		Last Modified: Wed, 29 Jul 2026 18:04:56 GMT  
		Size: 66.6 MB (66648529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10953ffb04ec66c6e426df3c0a02c8cc2de4053ee32e272231b6748a0071a56`  
		Last Modified: Wed, 29 Jul 2026 18:04:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3462f8f4017f72251295b13d5d525fda1ab867df711fd43feba5e3018326b624`  
		Last Modified: Wed, 29 Jul 2026 18:04:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:70bfacd4c45d1022710ad808a42759061cbef5a4acd3568333a168013d7eb4ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f873429ed751a53f2ef492d6b876537f9446d3cc5e74e0829dbdac9fa448a71`

```dockerfile
```

-	Layers:
	-	`sha256:6fde6960fcc052e764548f29980b3b1b2f2840f7cfa495c6d32a4a03c84b3f08`  
		Last Modified: Wed, 29 Jul 2026 18:04:53 GMT  
		Size: 5.1 MB (5119796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:571d184df42b762313c6e9521f29c891e4832b93d091a8a4ed30fc613e385975`  
		Last Modified: Wed, 29 Jul 2026 18:04:53 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:775d37bf76fda30284a8193fdbb0e56d2c1531c50f59d4f3638a84d2c05470c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250330182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb9a98cc11a7612a5fff9674377813c63fcae0df0ea05fb4474c3f3eb07e41b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:01:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:01:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:01:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:01:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:01:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:02:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:02:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:02:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:02:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:02:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a38b694a0f3c0fba176cb75f6c150e86b8b8b103a3ae08ef72c7d43b9b159ea`  
		Last Modified: Wed, 29 Jul 2026 18:02:59 GMT  
		Size: 145.8 MB (145766208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba411015f3eadbb54330c0a026ad9bb1d9fcc820b3954807ff9cbe56b9e47723`  
		Last Modified: Wed, 29 Jul 2026 18:02:58 GMT  
		Size: 72.5 MB (72486513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2ac75405dd3acd7a505aa8e799c9e3729897b6466506e9c88c3fe3b719c6c0`  
		Last Modified: Wed, 29 Jul 2026 18:02:54 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee50575fb7117368b3ab6b57e9591ac50ea9b519a68c0011d59d4f11b0e19ede`  
		Last Modified: Wed, 29 Jul 2026 18:02:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4591571c65698b650d53cba41906a86eed96abafccaca4da50e58d1b9e97b7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049ea8073ef7f6f4794170689634436d8fdc75b9e7d26922fd77fe0e2540e455`

```dockerfile
```

-	Layers:
	-	`sha256:32b4ef322ac29bfb3f622f2b1e072f9a9e55dd7ef90f44bc6f56aba8b262b371`  
		Last Modified: Wed, 29 Jul 2026 18:02:54 GMT  
		Size: 5.1 MB (5119193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37a55cbe50faed80d96b3ce596365f16ef6fa08f04a2de924e10ba8d28478ad6`  
		Last Modified: Wed, 29 Jul 2026 18:02:54 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:39980aba04f9775bde9ed8f6e7925c0a095782f0c3f8a5c684bfc9955c489d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.3 MB (228255743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8104c2f9e9134a337491bb2f4aa312de3a2fd792ee377698128d39cf1f4933ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:19:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:19:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:19:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:19:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:19:28 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:19:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:19:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:19:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:19:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:19:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68188bba264cae5a737e10dc1a03c6c8a702f6cf4808d3cf9ae0c140dc08b58`  
		Last Modified: Wed, 29 Jul 2026 18:20:22 GMT  
		Size: 135.9 MB (135910429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a680843a750e20beb27385f26d3d2a15b65785f21264d088acbbca0f242893`  
		Last Modified: Wed, 29 Jul 2026 18:20:21 GMT  
		Size: 65.5 MB (65456005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b7d425e43b648eb8b8455e3f179b63582b7bc17542c873f7303cef50edc300`  
		Last Modified: Wed, 29 Jul 2026 18:20:19 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681d6820e082dd6b98991c3751847d29f94377b54967e6c676c7e9760bdbd935`  
		Last Modified: Wed, 29 Jul 2026 18:20:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7ef6692fda285c4f4375e7bfb58421fbad702da59893b5970d10f7676fa9bcdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5121346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5dfc5b7d99c356ce971b4d0819e91f0f20b2ea2e5397b8bdb32f031d525d25`

```dockerfile
```

-	Layers:
	-	`sha256:2ceb272803a0eb87c7598dd8df25ca0868d2fd8adaf88ce850469f54dc17e71a`  
		Last Modified: Wed, 29 Jul 2026 18:20:19 GMT  
		Size: 5.1 MB (5105356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd90fdbde06fd3c5d773f5c1f4d7978eae267d4280f5a2edc49aaef6a7e2b60d`  
		Last Modified: Wed, 29 Jul 2026 18:20:18 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
