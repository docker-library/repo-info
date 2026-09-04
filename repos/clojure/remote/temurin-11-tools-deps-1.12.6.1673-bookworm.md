## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:2351d1937c10c89d7718818cb4d77b2a678bbe216fee58471e30b13019cd6437
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:a0188060c3a143ea1c8aaf889ceb9c4a3884cd40590e65118e2159736a5f5d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272530171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d891ed3c87c164a9bf2b9f26e58f6038819b8fb4c628c1d52295225d4237632e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:01:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:24 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c1905ec2155d6449b6b71804056b2dc1ef510d9e92b8f8732767f49b6c1e8e`  
		Last Modified: Fri, 04 Sep 2026 00:02:01 GMT  
		Size: 145.9 MB (145861403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f4f8e47ff46b70d020b09adc7757448001481ef09a92c86bc2c580b9faac19`  
		Last Modified: Fri, 04 Sep 2026 00:02:00 GMT  
		Size: 78.2 MB (78170761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea3b78a256dbe29fdfea73f757d09c29d31d353ce154aa1134661d53cf87d47`  
		Last Modified: Fri, 04 Sep 2026 00:01:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8e0d955fa70efd4dcc3c25e44ae8db37f989b839542242239828ecd293ca3957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80ba159cac3fbf3bd773f7ca916a1af60afbab154ecca39254aed1115c640c8`

```dockerfile
```

-	Layers:
	-	`sha256:edfd7b13bdac7e85efd7972f706efb87f523d1da730807cbe7b32636ff8d4b65`  
		Last Modified: Fri, 04 Sep 2026 00:01:57 GMT  
		Size: 7.4 MB (7400887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0c75133f08d185f1f5c93a236f4357d7e335330b2d28ada08b7602ebd70dffa`  
		Last Modified: Fri, 04 Sep 2026 00:01:57 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:282bd9be6eab66e37af58598820b9ae73ec240633cfb0aa4a597ea302da67682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269120826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f7890072faf550c7826d203cbcf0e4029fbaf864b8a6cb67e9aa93babab9d2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:05:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:27 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:05:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:05:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:05:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407825487bea73072472c7c46c74563a108efef8ee6fb8687e3ad44ca336c03d`  
		Last Modified: Fri, 04 Sep 2026 00:06:02 GMT  
		Size: 142.6 MB (142566599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4b9f0caa6634757ca5c19c432031050400cab85a9a5b09a113a6423a4ac80d`  
		Last Modified: Fri, 04 Sep 2026 00:06:05 GMT  
		Size: 78.2 MB (78169932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c57803a5148d218083a9f737bbd7c63277432454548e610bff6717e04158bcb`  
		Last Modified: Fri, 04 Sep 2026 00:06:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8cdad827fda9e05682ca2a014333e671aa838b4be34b1a44667d73d4c9b36565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680fbece5eb0a321ded593d0ffe20960b24c4aa9930a04eac89ff52f717f18a5`

```dockerfile
```

-	Layers:
	-	`sha256:bf973b2a5f4c81c7c760e9c1e91cafc46b981fc35fd1cc56e35e2a27516b026f`  
		Last Modified: Fri, 04 Sep 2026 00:06:02 GMT  
		Size: 7.4 MB (7407268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f3124cdb017bb4dff6f2523bc17b488417eb66504cc24af3d56a9db50a34f51`  
		Last Modified: Fri, 04 Sep 2026 00:06:02 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:0dc65a0b34cd455677dbaf9f6e96ca2cb97ba654c2c35405c19886de1fd0dc92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269416901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46128c5d7a5bf368bea601f04b0f11e1d37d129d0818782e915e5c5696ea8a2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:08:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:34 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:09:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:09:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:09:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc7c09a31d4124f835f4dde66cf1058087909652ca0ac8f9798c3170e4d7bba`  
		Last Modified: Fri, 04 Sep 2026 00:10:29 GMT  
		Size: 133.1 MB (133089942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06b61ad87431b248dee0690e314287e74e13879aa116a6de1c8458d71490851`  
		Last Modified: Fri, 04 Sep 2026 00:10:28 GMT  
		Size: 84.0 MB (83984547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea2063163bbf02b2808fc7069519529aab99eaeb9d9746afbf65ee222b35646`  
		Last Modified: Fri, 04 Sep 2026 00:10:24 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bfab705c6964ba072131d7b792fa4f19d12bc434524e749a7448c02aee815576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2747fac7dc83748e2de10214f3fb27583a615471d6f41e63fbe2564b2eb1f9`

```dockerfile
```

-	Layers:
	-	`sha256:8dd5498f044ec49eb850b1b09d820d4772538b6a5370d35373b999a9945fd043`  
		Last Modified: Fri, 04 Sep 2026 00:10:25 GMT  
		Size: 7.4 MB (7405488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e51c1baf1139ba23be9c2f8f4ce353b78d9d01c84933318152c80b71b854bf64`  
		Last Modified: Fri, 04 Sep 2026 00:10:24 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
