## `clojure:temurin-11-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:9f34eb58c7f4929fbd4243242ab6f8249594cb9af86412b6bf144a8ac44eb635
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e1de1ba9a910a064f0cd1d283b6f17efb152c30658b5f62799269a0a40f945ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232252710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1353f3215823631befcb77866e66b086c62563c2964fa6d015eeaaee2abfdb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:20:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:20:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:20:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:20:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517698448b1f3c564d75fd443e917e7b2aba26635ea00bfdfe793d39a784955e`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 145.9 MB (145886314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d73969e4e4cee68dfd5f3bf38fbb6d0dc27d6abf1435bfe351cc2430ae046c7`  
		Last Modified: Wed, 05 Aug 2026 01:20:36 GMT  
		Size: 56.1 MB (56106131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb30443ddfc989ab408f8597eab804c462ec679d8a241ddd614548ea727a24c6`  
		Last Modified: Wed, 05 Aug 2026 01:20:34 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7304ae265a642e08d2e57212639ea30c165ba355ab3fb92ba17b426d53e69a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c676434dce40a696354ba1fc4c71688a8c1dbac1674e5b6c949972324e69c6`

```dockerfile
```

-	Layers:
	-	`sha256:6f2f0d2c182199d70978ecdeea1dc5520728efc31521e17e7e6e2c7f697bd390`  
		Last Modified: Wed, 05 Aug 2026 01:20:34 GMT  
		Size: 5.3 MB (5337365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1870d2d35cbfd9f894db59af6c92670bbba0abbec027e2a98b61acf22e3b55`  
		Last Modified: Wed, 05 Aug 2026 01:20:34 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7beb1af29bbae3b857e602e7c1d3049c738a95c3b2ff12c4fb1ab28b0240fe2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227607843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8891c21623c028042d1ab965be42560369d7d778d5017e545d52513567b513d2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:25:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:53 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:25:53 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b48e68b294fb74189c6ac4042582c1445cf8976234a096486bd676942584d6`  
		Last Modified: Wed, 05 Aug 2026 01:26:30 GMT  
		Size: 142.6 MB (142582305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5134c78e09ea7d9b28c32510eeb691b39e116f3185336a75c0169cb911bb7`  
		Last Modified: Wed, 05 Aug 2026 01:26:29 GMT  
		Size: 56.3 MB (56275988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da956e972378f0acb2239d9d79458a5a89c55df9acb672a968a699dd88397d0`  
		Last Modified: Wed, 05 Aug 2026 01:26:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4bdd14e9846ea761e9a4e175a7021598772cf0688108db771cf64f50b9ae6879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7994a92e0f10c59929cababa92c82452059bb171e3f39133754fc5eeeea1809`

```dockerfile
```

-	Layers:
	-	`sha256:11c945694f4e7868db745cc7384af65b4872ee8a84cd613f93731f6286a7c926`  
		Last Modified: Wed, 05 Aug 2026 01:26:26 GMT  
		Size: 5.3 MB (5343715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77436a3adba57625d1bee542b0781666a534e98f316e3af8ee615984ca372865`  
		Last Modified: Wed, 05 Aug 2026 01:26:26 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
