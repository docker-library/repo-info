## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:2523f93132bbb579d5eed2c661de36414023ef76394dec74515d5c44c0bcabb9
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

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:77b8fb57f9baf22c997ba45250ec6c27f3b39ce89b7a01bd9004084f83f0f70d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240776795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d67047a568ead1a139579a5dc621ea9da3807797f21825cc6fcee7775c7e4c5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:19:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:19:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:19:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:19:42 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:19:42 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:19:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:19:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:19:56 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50970c0432e85279e88f7ee8665d984f7f3446164d50362672bbfbcd83030da1`  
		Last Modified: Wed, 05 Aug 2026 01:20:19 GMT  
		Size: 145.9 MB (145886290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c446d25544c6b05c12635ef926e0b34dbdef20fc2da599a1ae2a05be1efa93`  
		Last Modified: Wed, 05 Aug 2026 01:20:17 GMT  
		Size: 66.7 MB (66657270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0944b75e2648841899f53d988f567f7f0069a08bdb0f01e0606987fe621bc9c`  
		Last Modified: Wed, 05 Aug 2026 01:20:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:41902fa7a4f1b50dea0745f733f679b595e2f0a3d0282f8cf015ba69ace77908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5147972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420cfbefe3f40be65c06f4dd3b1fbc195831bf6e06bcf552f236912a39d3db0c`

```dockerfile
```

-	Layers:
	-	`sha256:30253bd0186ea1842e5396ef02033644928a74f518b0550cfebb2fa77041e1a7`  
		Last Modified: Wed, 05 Aug 2026 01:20:15 GMT  
		Size: 5.1 MB (5133551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5a068a13b1e2a61e91f1cd2640cf5aa9c0e9fef13a0b58545c7881124bc9763`  
		Last Modified: Wed, 05 Aug 2026 01:20:14 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fcf1c2583dde789ba34885f8b93e2cae6ba1473ce4c3136f028f6f8741ca7994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237349079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a978a5edb811579be5ccadd88baec81fc2a1c86ce8619e40b817d52088f15bc`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:25:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:45 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:25:45 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:489277a968a1572a1e8144b4a4742a7b08f92c9112b867c3c617d7042aee4955`  
		Last Modified: Wed, 05 Aug 2026 01:26:23 GMT  
		Size: 142.6 MB (142582307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4accbfb6e6ca0d7537969c8a4ae2a3ac8deb81f824bfa5c28764653dc357dda`  
		Last Modified: Wed, 05 Aug 2026 01:26:22 GMT  
		Size: 66.6 MB (66648927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1baa65c1dd0bb911c4cc4e234e2f9e7480daa3793c66e5cf80f260f02f53b8`  
		Last Modified: Wed, 05 Aug 2026 01:26:19 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:059c1cc5e0f5cee1547ca55f5c4486af5e1fa38b0e6a58c1c638576127d67fa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5154468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2855c60a713aa69bf770fcfa4169dcccc793110de11e5b9675ee85b0871dc62`

```dockerfile
```

-	Layers:
	-	`sha256:39c704a317950d1ad23f1f53443396dcfb93cf4d7cdf4840187896eaef15b7a7`  
		Last Modified: Wed, 05 Aug 2026 01:26:19 GMT  
		Size: 5.1 MB (5139930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83bc6aa9a897c45d2e864702118d97ac7ae66f04eda2fc6ab6e3e5617bbe1190`  
		Last Modified: Wed, 05 Aug 2026 01:26:18 GMT  
		Size: 14.5 KB (14538 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d0b9e8b6e67860edb5d0e142c57b5ca9d2ccbea0ec839b242099d092522e6db8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237673751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f29adfab39cc37a773b2f762c9ecac2a57b2e4c074e0e887012b5055366255`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:24:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:24:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:24:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:24:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:24:34 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:28:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:28:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:28:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149a5cce8b2000e28e80d11ac22b79ec3d3eab5bccc99d232ed6e422ba7c1f3f`  
		Last Modified: Wed, 05 Aug 2026 03:27:42 GMT  
		Size: 133.1 MB (133109636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ace7fa8dffe29d7f27ca1150d8f48a5b39e6ce0ad5ff550f94c0858f5c36386`  
		Last Modified: Wed, 05 Aug 2026 03:29:32 GMT  
		Size: 72.5 MB (72487146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3d06a4fcb0744a0b198b6d33a701e85b6c7997d17731b2f4da352a3a45a987`  
		Last Modified: Wed, 05 Aug 2026 03:29:30 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ced20c55ff4c1e94cd9703648ff23b8b2e534f23594b50919f3a14bcfd22adf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289f1c21fbcb6a252c02ca2792b641905472f43f4b9c6205516ba9e348316edf`

```dockerfile
```

-	Layers:
	-	`sha256:3276eae4058a34aaee992e40d20331476c9587fbe2400b4e1a0e64cca7559867`  
		Last Modified: Wed, 05 Aug 2026 03:29:30 GMT  
		Size: 5.1 MB (5138094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891063a17776a8d48fa03f4fa107c313175af2117bcb9ec94ab3e9acb2710644`  
		Last Modified: Wed, 05 Aug 2026 03:29:30 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:5cf68fb6108bc7ab02874c381637ae3138358966ee16f94b1307b3e17bf1cee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218997351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fecad364a3c56bdd52c2b583851d6ea5359e6b187f6923213dd81080a7a998b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:51:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:51:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:824c87d906fc73b80310937982d370ad7d5af67a45d73feb5d7a209c632be5f9`  
		Last Modified: Tue, 04 Aug 2026 02:52:01 GMT  
		Size: 126.7 MB (126652394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a5ad10ca2c01a9273a7a015f2955e3e3016b4d03c83fc82ee498cebd9c85fa`  
		Last Modified: Tue, 04 Aug 2026 02:52:00 GMT  
		Size: 65.5 MB (65456046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c32a53faa6c4167316d22a8172eb3c4d5b1cec8d3d66be0967c4a46fd31944`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:71c67bcebe2603916fcec544f7f84bb93e510837b10c85f48178f225026e34cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823795510815fd11ffbfb4468e19a27bc4b80ba29c2df9ad880c6577480f0db5`

```dockerfile
```

-	Layers:
	-	`sha256:efef67cca2131020327b2606caa816e54ae4771a26db9ffc8d79edb5f79ca17c`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 5.1 MB (5124876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dab02f26480df4076b0d9af40972a6ea3689f9edc30d3b83ee65f35f46a99dc`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json
