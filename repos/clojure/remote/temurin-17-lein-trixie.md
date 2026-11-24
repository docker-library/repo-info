## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:b6cc9750591a99ac92d0c23c5555e6683a092376d2d3556288ae7b385302af1a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2a86553a4fecb38b83637b7f7d0525579e1e3928f9a29558c35ba903099d801f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218932872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587b4c8bd432760543c44d8639346da1d769d97e9e0f3ba8bed4c79cee3dd024`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:10:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:10:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:10:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:10:25 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:10:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:10:25 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:11:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:11:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:11:40 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:11:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:11:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:11:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:11:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:987a7514d3bc63da91a399aad250158c86267102b76d374e3ded8379a18df930`  
		Last Modified: Tue, 24 Nov 2026 05:12:03 GMT  
		Size: 146.1 MB (146114251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1db8fbce1b8fc398b42c89e9c231562d0a75845be59e3cce5f5f23b5609d9ab`  
		Last Modified: Tue, 24 Nov 2026 05:12:00 GMT  
		Size: 18.9 MB (18893231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2313111a986a633d5687c603c88b1b82d3a878f809dab4cd8bf70bfa9ace3ed3`  
		Last Modified: Tue, 24 Nov 2026 05:11:59 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d049dde5f082e6308077f79536db83b66dbc29be378e67fd2802e92c69154bf`  
		Last Modified: Tue, 24 Nov 2026 05:11:59 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4116598720365b9c1243de3320f400e8d02aa9fd35c286eb7a41140ea63017f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042e6758db93b6cdfef7219b234f68597f58896ce27897faf30f9789801ad0a5`

```dockerfile
```

-	Layers:
	-	`sha256:db777451e9d91391179822762fbb5b16ab7c4ed56f359a2dc7c691a18a91efb6`  
		Last Modified: Tue, 24 Nov 2026 05:11:59 GMT  
		Size: 3.8 MB (3825698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26fd50a55f3b88b663fff2f389770e43b15c6aa4e4b09e42d243a7dd1ec96eab`  
		Last Modified: Tue, 24 Nov 2026 05:11:59 GMT  
		Size: 18.3 KB (18314 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1ef342de2a8d7414e2a4e097d3000b4370bebe9dd821da000e8b6681c96a601b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218094767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fab6975a0f232f936c18b05beafc471e7e518b6644f5f646ba5037a8f80789a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:03:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:03:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:03:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:03:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:03:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:03:17 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:04:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:04:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:04:35 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:04:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:04:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822b128cbced115583d3ebf28e7aa3133ee32dff49835f9d5151e244fc509bb6`  
		Last Modified: Thu, 12 Nov 2026 01:04:58 GMT  
		Size: 145.0 MB (144957165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725aa75fdbafedeb03ef6afd7e4c8d7a0630271a89527c8c35a40bcf5f946669`  
		Last Modified: Thu, 12 Nov 2026 01:04:55 GMT  
		Size: 18.8 MB (18842884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66865a6b86e755ba890e3a93baa3bf6b6673074bbc9cf763f62fe7cd765ea23a`  
		Last Modified: Thu, 12 Nov 2026 01:04:55 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbb2e96ba397996167820a26ad6274d61fc921625040b82aa5fd67a4c785aff`  
		Last Modified: Thu, 12 Nov 2026 01:04:54 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:24c59ffed6e609930c07d05cb613a5e940cf1ffc4ea1d9d1d9f3e1bf33567638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264fe47c47983c836dd82ccf64d4093c7eb53a52fdfbb85453c731c9abf4d16e`

```dockerfile
```

-	Layers:
	-	`sha256:fe908875501292f2b67e72e758ea2841c526ff0c89d36e7cacbaf15574dbc1c2`  
		Last Modified: Thu, 12 Nov 2026 01:04:54 GMT  
		Size: 3.8 MB (3826702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e92293ceb625e11e703ea87ec2429cda00ec528e7304f99010f2c958c34e6338`  
		Last Modified: Thu, 12 Nov 2026 01:04:54 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:557f679aedc024f294282df99a45497778a17b9466dd7596e832df0cc7b81675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.4 MB (225379984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1b2d22c443af4fd9d6d4bb051a4b361bcf047e80ceeabad17ccbdaf78f1660`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:18:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:18:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:18:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:18:42 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:18:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:18:44 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:16:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:16:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:16:31 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:16:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:16:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:16:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:16:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af8c705c834fd9320fa2c8725abcbb8ee0b3b557e5b63fda4fa70e0d585014b`  
		Last Modified: Fri, 20 Nov 2026 19:22:57 GMT  
		Size: 144.9 MB (144892641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f09a6e24bbd1032732f30f2de52d55af7b28e3cf5c31f50c1cdf71ec327da05`  
		Last Modified: Tue, 24 Nov 2026 00:17:00 GMT  
		Size: 22.7 MB (22745612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546638c6df544de69565bce555327668fb81e95cb9c06403233e8d783d5e5d5a`  
		Last Modified: Tue, 24 Nov 2026 00:17:00 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ae210400c3aeb64f0b90ac03edaba0106b0f51a537bccd4b0a6ba469bbd4c6`  
		Last Modified: Tue, 24 Nov 2026 00:17:00 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dcae4733811961af7b361cc3299c8eeeaac384dfb1c868ba79b89835d05a764c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb40015c25dbfeaed44c4b8019f97424a5b205514a37a38f1be17b48993911f9`

```dockerfile
```

-	Layers:
	-	`sha256:691816de1a29382aefa8808cdca3d26ef66f5218a4ee95e6f4900ee9b1262b63`  
		Last Modified: Tue, 24 Nov 2026 00:17:00 GMT  
		Size: 3.8 MB (3826222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb0474dd8359eaedfcbb4c8c2a735b101fd4adaf3c012f42e7c6e1e354b23d4f`  
		Last Modified: Tue, 24 Nov 2026 00:16:59 GMT  
		Size: 18.4 KB (18357 bytes)  
		MIME: application/vnd.in-toto+json
