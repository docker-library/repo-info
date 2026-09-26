## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:b8cdd75707ccc3c884ece644a9db81fa9d68fa31aaca3a7013250d5e0afd4c44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:03925d9e36ce9ee8675c5aba7f4aa95e4145ac2965081553e0247f6fc8393486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150119280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db4ea65f452a4df218187034818081c26a693d5e8811ab73151ceae4678031d`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:18:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:26 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:18:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:18:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b219fd2e54db9ccaae0357c01fb8cf6279e751ebf2b9e90f9bf088e7807735`  
		Last Modified: Fri, 25 Sep 2026 23:18:56 GMT  
		Size: 55.2 MB (55192249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f006c7a30d76f18bc21193b6cc6bbf31852c92120682c0f4f8f1e0f4edde068f`  
		Last Modified: Fri, 25 Sep 2026 23:18:56 GMT  
		Size: 66.7 MB (66687943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9906f9175275a27ee39940296f2aa28cb560781f06a1ea1f7cd02a939190211f`  
		Last Modified: Fri, 25 Sep 2026 23:18:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3f8aa4d3bcca00aa187e2c8d2d86baeed9bdc7b9054be06c34df77d54e4be794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f863e2b5a00a835f16749ea9730b83584c980d4580bc69e49bd18ef6fa6e735`

```dockerfile
```

-	Layers:
	-	`sha256:acc7d40106019628cda62b690a6ec838088bffeb36c29dbbb13b932ea17a5c94`  
		Last Modified: Fri, 25 Sep 2026 23:18:54 GMT  
		Size: 5.2 MB (5239662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9505c96f68ec0e5d1225147d5b10d060f1e931431ecca34d70662c637e31530c`  
		Last Modified: Fri, 25 Sep 2026 23:18:53 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:704dd499fee3c9913f4554ee177cefd35d7d27838e8d9a5a6865a1451bf9ae5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149060176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06032708cb60c1c3edf2782284bb0197fd882cc86882fb5789f9f70995384d6a`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:16:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:16:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:16:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:16:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:16:10 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:16:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:16:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:16:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cb3742d7c128af0ab17b026c84fe62a2cb47b6153f1d0077315b68659fdd82`  
		Last Modified: Fri, 25 Sep 2026 23:16:41 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430e05c4a7141505c3195d437413bf09a89f1202199d3cdaff6be5d569081935`  
		Last Modified: Fri, 25 Sep 2026 23:16:41 GMT  
		Size: 66.7 MB (66681578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78ad5c7306026890d748c47ffab2bd24a8c096d3f623aad820986f73234ef3a`  
		Last Modified: Fri, 25 Sep 2026 23:16:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fc8ac0a8b714c9e5e82ed4991594a074600de75d025b612d88a1ccdeaec7fa49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f22854b08d16c37d332fb1ff28eba040773c380afd94bc123ed30ac66050a3`

```dockerfile
```

-	Layers:
	-	`sha256:a1fd329bb1514662b753c3e130c2119538c935cf13b053ac148ce8f850714e9c`  
		Last Modified: Fri, 25 Sep 2026 23:16:39 GMT  
		Size: 5.2 MB (5246123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:514892e471ea39a2d62c97eb3ff845f0e15356db24e805fbf48c3a0bc8cbd94c`  
		Last Modified: Fri, 25 Sep 2026 23:16:39 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:068f6650c0ad3aa02f3e51ac7300194cda69d2ee302a9c178115767ef0c069a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157249015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eda0ea37483bd54efacc0739143400b3e44365b75414c212dea79da4fd77e7e`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:45:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:45:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:45:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:45:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:45:13 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:45:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:45:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:45:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a3544a1e0072d979125e5380757992dab3698d90ad8ae871cca19747ae5dbe`  
		Last Modified: Sat, 26 Sep 2026 03:46:29 GMT  
		Size: 52.7 MB (52667114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e75f1f790c0878bbc9ab51276730e5820a5fcaeb3be228490faec05e9e170a`  
		Last Modified: Sat, 26 Sep 2026 03:46:29 GMT  
		Size: 72.5 MB (72497690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf9be1f21e35de89ea6e56fdefb21ed3e5905c5239448febdcf783836dba820`  
		Last Modified: Sat, 26 Sep 2026 03:46:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7a0cca3b6ced836d3e3fe27da6d6ae29cf92ed2c7bb4bc197e953d6b298f6d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:786f60eafdb1b568a554324342adfe1d0a5c90001c82f91706fc1ab415c32c8b`

```dockerfile
```

-	Layers:
	-	`sha256:e3e43a03beda66e7cf277fad20be1682f7d3d827e5e998a6683bccadd8eae050`  
		Last Modified: Sat, 26 Sep 2026 03:46:27 GMT  
		Size: 5.2 MB (5245415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e35100ebdf7c0cbc5a4a93494dab716293ee54113ac0567932ce54876efe4d09`  
		Last Modified: Sat, 26 Sep 2026 03:46:26 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
