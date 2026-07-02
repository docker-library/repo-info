## `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim`

```console
$ docker pull clojure@sha256:e81880d5294786c128685fc373eacc7c1f56a668328a9c5e8a90c642e59ca15a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:301f6a87067d191fdf56c4b8c4beb867baf043d70d6494ebfdc70f6a5e75dac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150079589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f114c884c4a208b9e8654b44c93a6d1a465abc666f68a6989a6a2eb1f365501d`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:12 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:12 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb42e7bbf0072083eb6b1f519744f19f377af915a8c57db15b741e2dd7f71bf`  
		Last Modified: Thu, 02 Jul 2026 05:47:41 GMT  
		Size: 55.2 MB (55198702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf3efc0a246936a4e6456a223a8df10c8e09b179be9531996c2a075c373d6c`  
		Last Modified: Thu, 02 Jul 2026 05:47:45 GMT  
		Size: 66.6 MB (66642601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd5b6054dd0f4a06b501ecf44a44f0ca535ca82165937a47bfed9caa4889bef`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9cbb45291b6d48e424c78d69505be80c2608cee2e0da7038ea8a55fb8b9f3b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730044fc92c3d8b71f4da4cbd7a975e80d497aee099da3d87572872a61c88b98`

```dockerfile
```

-	Layers:
	-	`sha256:6249d993e3ebfd00f8bf7ebb2d80cd01fe53851675571b4cc5419a17496a1506`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 5.2 MB (5234359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e87870d9b6f66d8c3b9e30ec385a06befd63ea2a62b576283c150a3a8530c0`  
		Last Modified: Thu, 02 Jul 2026 05:47:42 GMT  
		Size: 14.4 KB (14401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:83ed6e60ba5dc8fb2a81851f678174bbb047182f0cf5f3eb566820b09ee73f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149039486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6fc074974d2ea381b1f10b5125f7b97c331ac57cf4dbf4e90b1d7fc5fc04bc1`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:27 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:27 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:47:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:47:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:47:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bb3541b82e94354878696d718e228add1efd34db4b9ced0e3823c309912f33`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 54.3 MB (54272959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66d90a3b9aab13b31aaae44857940be9b9deec71e95dde35cbe79d85991868f`  
		Last Modified: Thu, 02 Jul 2026 05:48:00 GMT  
		Size: 66.6 MB (66643464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1c86d2e69e0b1ab78566b153f8cc5ccd6944371b87f4b9475d0a05d64be081`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3e651dd327020b0b972645855244a8d30309b27fc6886b9aecbffa5f1ff1526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5255340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e11ab97755efa8d6b3333d0c903d32f364898cd6e327302e680aec13e21f00`

```dockerfile
```

-	Layers:
	-	`sha256:4bb3df884cf6d4fd61e8810207e1d2fb84cc7cfa94d02c7bac3e6a4b9f8e4f9c`  
		Last Modified: Thu, 02 Jul 2026 05:47:58 GMT  
		Size: 5.2 MB (5240820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c6618929b5d2af28dd8cf5535c03ffda488fb67fb0b1ad1216a31e6ac71e084`  
		Last Modified: Thu, 02 Jul 2026 05:47:57 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7969724f208d3155744c49f4800cccdc788301a78c682ea3b5d6ff0e08e1b95d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157228027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1082b6ad6dbe26edefaa741f09d6bbbab0f186f421aa2ba6a55d6f63634bf865`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:46:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:46:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:46:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:46:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:46:04 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:46:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:46:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:46:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbc8cbc3b754a226a54732e762ea3cf063c2f0866ebf01906dff36249088eb9`  
		Last Modified: Thu, 02 Jul 2026 06:47:20 GMT  
		Size: 52.7 MB (52669153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5589e748b6d10971128cbf4aeff268fcdb84e30dee1d959f7f6dd1b19c7e0818`  
		Last Modified: Thu, 02 Jul 2026 06:47:20 GMT  
		Size: 72.5 MB (72476251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0dee28bddaa48479def9404684e3720f78623e31a1298c13351eff00b3bfe8b`  
		Last Modified: Thu, 02 Jul 2026 06:47:16 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f385e583e5b4decd8d311f69622300c80a0f1696306e9b9e8bca3f64d43a267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880e5c690c542fdbf4edbcfbdf31b631707dbf7fce999bfa515cee5f14d9eebe`

```dockerfile
```

-	Layers:
	-	`sha256:2a54650c2a111d0f75812f355aab56990501f2c6e7077916df651b29f335187d`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 5.2 MB (5240112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13147c968e66f49de676c6af1bdbad9d5c3ff1b1410ffbd13dca77c057f2de56`  
		Last Modified: Thu, 02 Jul 2026 06:47:17 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
