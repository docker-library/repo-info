## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:c1cb8119f7737ef9e26ca729776bd0b3ee4362865bccc818f128707897e483ad
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

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:95bf22b9953e42e4c572dbd22687c3e18036f3a67ee8b11f6b6928e0eec4416a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272566988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8717359292df6401e3c54f854a7627ea2c09de1f7b89520f29770b540409fecf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:44:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:44:16 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:44:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:44:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:44:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:44:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:44:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf12fbfd6c24760bd8ca3cf0598ff05502f926e7adbfc49131f881bb374a0713`  
		Last Modified: Tue, 18 Aug 2026 20:44:51 GMT  
		Size: 145.9 MB (145905481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac940e28543966d538b108710abeab5385f25391679c76956267217592dcb89`  
		Last Modified: Tue, 18 Aug 2026 20:44:50 GMT  
		Size: 78.2 MB (78163377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd2339c51bd61e9fac0ee48504ebe89ab1ea2818292340d4d0c112a9ecb30e4`  
		Last Modified: Tue, 18 Aug 2026 20:44:47 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00351b076636ec25b67a92bbd5d7c656c46a6a439d168d4b26339ea34229eb58`  
		Last Modified: Tue, 18 Aug 2026 20:44:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:da851b941aac9491f333155fc89eb7aaed13b92faf18356a5a18d7fb4a281179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935e359200fd220eb35f18248c02ce5c2a0e9bde07b3c5b02c77aa4dd09489be`

```dockerfile
```

-	Layers:
	-	`sha256:2aea03abc6ecf79832abfc48611d9872cee92189103aa05ae9084e478eb9941e`  
		Last Modified: Tue, 18 Aug 2026 20:44:47 GMT  
		Size: 7.4 MB (7381373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:703a7404e41388a9fd1bd40237689e0825e8910a1a8d4cd5d66df3d15f71e093`  
		Last Modified: Tue, 18 Aug 2026 20:44:47 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:33f67d734e0b1cf734d0487572668eb143dbb140de3ecd80672f397a437df528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271253611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d168655dde5c6f460ddf3aa735397a287cfdee1d607838f78752e4267217cb93`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:44:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:44:28 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:44:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:44:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:44:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:44:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:44:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a4ba3c435187edf7e6bc4db362dd1e83a078c64269ab953ac39bf395bb2e93`  
		Last Modified: Tue, 18 Aug 2026 20:45:07 GMT  
		Size: 144.7 MB (144724266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75271d58f392f79f55b0e72f0014cce22b1b6ace4fafb9c5e2af52d9db16c72`  
		Last Modified: Tue, 18 Aug 2026 20:45:05 GMT  
		Size: 78.1 MB (78144924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56efd556c11aec60513ebda3968ccbe30319442a7caedcc1a3c891d219173ba`  
		Last Modified: Tue, 18 Aug 2026 20:45:03 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726c3de607dc40303dcd933c9b2b7cb4c7e0f48659a446089a1b7b6c8ca6f993`  
		Last Modified: Tue, 18 Aug 2026 20:45:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:afb2eee88ebc38fa9147187ed8a64f3230ee7315f38c2d697cf2ade704a4d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29bedd7fe3aa1b609ed7554475d46b8941068af444a51548a708a2f07ec1c65`

```dockerfile
```

-	Layers:
	-	`sha256:5557b17a8492c00974910a05c933af60201e4a55827d368afb93aee58f142095`  
		Last Modified: Tue, 18 Aug 2026 20:45:03 GMT  
		Size: 7.4 MB (7387136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4db7817ae2bdfaa1e2692955d7d44432a0eda48fbdca7c1b6e11412c5631995`  
		Last Modified: Tue, 18 Aug 2026 20:45:03 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2df3b2d5ee16952adabe960bd1ba52f8b2c241f77f241f680a81f066b024ae30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282086556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efec9855c5dafc7fabad2f3e715f6afb8334cb3587d076c1054cffc7c3fea5b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:04:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:04:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:04:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:04:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:04:55 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:13:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:13:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:13:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:13:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:13:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399431649866870af8d638fa471d6ac66e92bbee0bf25be0e4a8931487de1d23`  
		Last Modified: Thu, 20 Aug 2026 01:08:09 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b8a96131f9d4483e4a0e122e05b2b3600ef5f599e5a7134385eba9d5234d4c`  
		Last Modified: Thu, 20 Aug 2026 01:13:43 GMT  
		Size: 84.0 MB (83977804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529096c20be76b52efd2a05e58c91a931aeb582aeae8882fd2a9eb4d97233afb`  
		Last Modified: Thu, 20 Aug 2026 01:13:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22a7888f2387ab871021e356060cfbc043c337726d011195c7bc4d14d6d74d1`  
		Last Modified: Thu, 20 Aug 2026 01:13:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f6872fd8d16f67e2cfa785e59b81514699c7c16033403d13e9eb28056c04d91a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc61d6216fbf1eeafa4c2a3f3c0510316ac18779a0524afe9a592d9c6d002a2`

```dockerfile
```

-	Layers:
	-	`sha256:1bb201b04e8d7b4f3b895d92493cf4d60188c6a961026c03de17888cd4ebb547`  
		Last Modified: Thu, 20 Aug 2026 01:13:41 GMT  
		Size: 7.4 MB (7386589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07607894476048688e73251e6f234e2f2d07738f380c9a935e2357604e79a5ad`  
		Last Modified: Thu, 20 Aug 2026 01:13:40 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:bfcd0c16d5a90886e999f94a06b177b0e03be7b2132f5628230c8f00eab96daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260005284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355b290e1957c6191b81e5bb3376af7bb4305ec2b8125d116abc49a98a36abd4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:54:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:52 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672cfd80b2de9617a2807862b99a35247a3554b24a104ff21c4f4aab84991079`  
		Last Modified: Tue, 04 Aug 2026 02:55:36 GMT  
		Size: 135.9 MB (135910420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e09f1300f82a0c031d26b24874334025950e626ce5f55301e60a02fdec63267`  
		Last Modified: Tue, 04 Aug 2026 02:55:35 GMT  
		Size: 76.9 MB (76936543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75466306a78aefde637270a1e67569574cc485dcbe7b3da721370c0ac7d221b`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f2119ee928bf31b98f4191d1a18f0c88ed79258c64618951e10fdaf59fddf2`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b339daa609b75a55d067476d44619f812d00b542348e302afb9825ba45ee8040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7383420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4e9820616567c0a84c3a77001b1e6e91eb98c6adbff039b35aad4fce0765c7`

```dockerfile
```

-	Layers:
	-	`sha256:de8ea0eef1f7d5296073f25190b396c6822ec10d7e2ea8d1c26ca40ce3ec9620`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 7.4 MB (7367489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b952204e8f0ae27c5888a602be355bf08318575a90b4d1ac68ce0b043536e0f`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json
