## `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm`

```console
$ docker pull clojure@sha256:83adc301012346a4f47ffcd42e0fd85f4bb92566aa44c8e33b39a1e824263088
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

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:7aab756721246c3cefeac9b5c57e333b58e84ea731a7c36617e2133db1ec9677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272484134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe9945cb7c4c94cf75df63c650661c0cc0874379068960c600b77c25edccb05`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:15:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:15:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:15:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:15:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:15:13 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:15:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:15:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:15:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:15:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:15:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a511062968e49ddc681eb87697886fd8a26a47cefcd5054bd53ad72573bd23`  
		Last Modified: Fri, 21 Aug 2026 19:15:51 GMT  
		Size: 145.8 MB (145822642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed86b83ad7f894cd4b54bfae67d7b23f296d14c2c3e13728f72f606dc689865`  
		Last Modified: Fri, 21 Aug 2026 19:15:50 GMT  
		Size: 78.2 MB (78163357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f464dbca24d81a29e2cb59eee4b8ecd09d21ffb473041b56ad006faae2b0d87`  
		Last Modified: Fri, 21 Aug 2026 19:15:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa84c433b1e509391c4751990108aff7b2da00f2e2a69362cc9064962fbef77`  
		Last Modified: Fri, 21 Aug 2026 19:15:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:71b4c1e4d4255f6f91c43e9c75663cb61f44935c43602d6c81e88f1fadea5a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76b0985d8bdc5cba7f86c37c1c940abab895a2789d7bfb1d685a6dd54685b90`

```dockerfile
```

-	Layers:
	-	`sha256:ee685b0cfdab5558a780e6e85bb2f5336cb917681099476b1a29403b414ab2a3`  
		Last Modified: Fri, 21 Aug 2026 19:15:47 GMT  
		Size: 7.4 MB (7381371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05887e920abfb6ee551bcf880b77ddbd921e432267fca888635a30d79c2a493f`  
		Last Modified: Fri, 21 Aug 2026 19:15:46 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3b11ac8024fc7042b5b7e26a35f8443e0d6c22fd9d14d6751ed69e651bf631cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271177934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1d77905afc86960e29b490e169f4d88afd7b27ff412a975c5d46bd28392691`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:03:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:03:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:03:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:03:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:03:58 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:04:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:04:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:04:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:04:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:04:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0fe6de206f86a30bf63c530e18f2d888d24c1f2a90697137924fb6771de1a0a`  
		Last Modified: Fri, 21 Aug 2026 19:04:38 GMT  
		Size: 144.6 MB (144647543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006fb90be4438a47fa09bcddef60fb41126a4cc492340985564954ec297261e3`  
		Last Modified: Fri, 21 Aug 2026 19:04:37 GMT  
		Size: 78.1 MB (78145969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19bb198b3cf21b08ef29cb2eff739eb7430fc5a8360c892f0f981bbefed4143`  
		Last Modified: Fri, 21 Aug 2026 19:04:34 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b3d06f41147fe03c6d57dae0ce85b10d6b115efb6d4852994b32a94c35076b`  
		Last Modified: Fri, 21 Aug 2026 19:04:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2bf81400d22dc9b3ba18bd75fa309ee4be407634d27b909edf68e61b96c89429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1b4ac0556aa143fe024235ea4d41938c929fb48a8c88c3df108baad181ab36`

```dockerfile
```

-	Layers:
	-	`sha256:d975b3a560e212a6c15dad05555a92c2b445212172fac58a18ea55dd801dd950`  
		Last Modified: Fri, 21 Aug 2026 19:04:35 GMT  
		Size: 7.4 MB (7387134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e4ab0902a1ae51c296b0d9c7baa72ba6a4c525a51a88256dcb36d90f64b9737`  
		Last Modified: Fri, 21 Aug 2026 19:04:34 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm` - linux; ppc64le

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

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm` - linux; s390x

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

### `clojure:temurin-17-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

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
