## `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm`

```console
$ docker pull clojure@sha256:5b08d38b917e32cc491525314100e0c8d17f8e283732ff5eee20b2833716ce05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ab684dee4cd4a59345e614289f68527f5192f0efa996b84e52d86985c35457a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181841097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949719a825418770cc26d2ebf444d69c5461ff94108e6e42657e86caa95d5e9b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:27 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:46:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:46:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:46:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd560124c59bbe263531888ba990fcb6f54b65d12a8cdc7bbaa66ab42fa167d7`  
		Last Modified: Tue, 04 Aug 2026 02:47:00 GMT  
		Size: 55.2 MB (55198686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c330ee1efb2777e217c6f4fe1fca22144568e0e4aa7a3a22beda9e34e6019387`  
		Last Modified: Tue, 04 Aug 2026 02:47:01 GMT  
		Size: 78.1 MB (78144364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee3b91e5a8a34e930b8ad01c15845a45eb592064e8d223fd3f46f97fea991a3`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:697c1b269b730e8c273b2d25b28bb96595a55c67fe48eb9830ccca2fa2958599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1ae683ecd8c6e5d5ac2769ce6c2d77520374b09b3db162e3ab14c7a049dbbe`

```dockerfile
```

-	Layers:
	-	`sha256:d1a90270a8801a3f7e8dc34e3e92a2b0dae9d62a71fafca7b7b81f4ff80082e2`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 7.5 MB (7496530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a54a974e413f0ae0af8a245d92dd94238e83ceb97dcaa089bef87fc4a0fbd4e6`  
		Last Modified: Tue, 04 Aug 2026 02:46:58 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4ff96afe532a4130bf2a0af83a8a4d09270ae86611e6b0241ea21f381f897c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180786180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b06fe688178a217dd91d53150fdf1a85dfb0d60828e6f786df6ecf5d599d7d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:46:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:46:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:46:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8fca7a265d32ef2c6cec48bfc025a8e91a0ead879d61802806d17f348bf6c1`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3bb0ef47d326439a90a461f5228d418e4543529995d88438631995594717bb`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 78.1 MB (78128910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41904f15f74b50658b59edab876f2c8922c43d6231a90c78474ddd199609e988`  
		Last Modified: Tue, 04 Aug 2026 02:47:07 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5ac7942081143a49ecfdbede645e261c4379acf624117700adc0cffb611da559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f78d06e03ce6c59029733d87daed21371c2b600d335b2ea7d8fd90d0ac5be2c`

```dockerfile
```

-	Layers:
	-	`sha256:6f9fdeee46208cac29e205553c7b40d46130ba50ec4acf290b88bf3d1a0559b4`  
		Last Modified: Tue, 04 Aug 2026 02:47:08 GMT  
		Size: 7.5 MB (7502993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfdb858128dd25f3307bad6235443f726506eefef69c5b0dc551f97847d00151`  
		Last Modified: Tue, 04 Aug 2026 02:47:07 GMT  
		Size: 14.5 KB (14465 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:14f1e46e5de7d6760417c9ca83b8655a584cf69774ccb72a98eb66e7ba2379c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188985603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94cf618649d8666de3ee1d47e5784fb1a86af4ce08f7cddb3ec52966ab9d400`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:44:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:44:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:44:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:44:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:44:18 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:44:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 04:44:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 04:44:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c227ba8fcd34a2a170d7d2554c5c3d8358164bf126f7b27fb4bb95120ff60fa`  
		Last Modified: Tue, 04 Aug 2026 04:45:41 GMT  
		Size: 52.7 MB (52669123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49352bbc828d818957a668e2c3c9a0c73e6d723b913ba87a828383b6005fcf8`  
		Last Modified: Tue, 04 Aug 2026 04:45:42 GMT  
		Size: 84.0 MB (83973999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a37ac101a3283e1049ac3c4d71161d4676a9c29f344eaae062f8e0f22c9a0be`  
		Last Modified: Tue, 04 Aug 2026 04:45:39 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2bb412b1595a4fe7f604b7ab94f3186c19fd5129171e01ba4c060ed619c140a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3d048ddff6054c5374bb0d08b36f156884e333990b96f85a27af7371fd7065`

```dockerfile
```

-	Layers:
	-	`sha256:72b3bda640c6d2e3e56f5fa133abb20416339c60736157c216e1fca5fbb984e8`  
		Last Modified: Tue, 04 Aug 2026 04:45:39 GMT  
		Size: 7.5 MB (7502341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63edb5d05fd72b27d4fceea8f7815f89afefc17d8d64bbfc6aab5f6867e5f395`  
		Last Modified: Tue, 04 Aug 2026 04:45:38 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
