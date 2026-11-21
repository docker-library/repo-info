## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:22faf772275ea453fd10b221be9058d4c09fe8d9afb3290b9fd36b268e081184
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:bca4590398d102c4ea9a4e7ec13ff8bc5a95a3e82f3ef6ca89b1285ad266e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218927576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5093c2a364352e24a029e7dfee32667d1d45a88f4bc7f871dd39b8d0aa6ff9c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:08:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:08:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:08:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:08:12 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:08:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:08:12 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:09:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:09:35 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:09:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:09:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabb45dfc804c8492ccd113e4244b7171367273ca70a6fc8394b3d110cf7850b`  
		Last Modified: Fri, 20 Nov 2026 18:09:56 GMT  
		Size: 146.1 MB (146114263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68adc22f22b7e11ae78e71e892a8d5c9da09f2c98855fa51c96d64a9c411a2d`  
		Last Modified: Fri, 20 Nov 2026 18:09:53 GMT  
		Size: 18.9 MB (18884655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16874cd8d3947128d4012a044f2d8dca4953d811a05bc03bd6663bc5067e7a2`  
		Last Modified: Fri, 20 Nov 2026 18:09:53 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c1856cf2762b3b08727af119639ee5b8605884bba8f13ffd190b72ee42ed64`  
		Last Modified: Fri, 20 Nov 2026 18:09:52 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8f1967a4ca312f91ef6ceeadf862dfc7d4e9960a553e7175c591370943f9e041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ccc89889351ea155ca075ab12c1d5d8b5a4739c10b00ac7071b6639e7ff5a21`

```dockerfile
```

-	Layers:
	-	`sha256:fda210399ff85a8587196c4d2b71bb8caaca2495109855f95793d72a908f72e4`  
		Last Modified: Fri, 20 Nov 2026 18:09:52 GMT  
		Size: 3.8 MB (3826470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccd302d818f4793f4baebdaef2673a916f08f3558483956f317f8ab0eb5eb081`  
		Last Modified: Fri, 20 Nov 2026 18:09:52 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

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

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:bea67d690508995f1d7405da55ae9a8bdd55095ab103198df76b5f35ed72c9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.6 MB (221573621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e281af7c44a51847a8c386ebc12af7cf1dfaedf4bc5922a40dcb2afaa34f5b9`
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
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:18:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:18:44 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:22:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:22:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:22:01 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:22:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:22:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:22:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:22:06 GMT
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
	-	`sha256:fd103be6170c0f9fdb095e6bdb6ecc9d1d53b6a330893cfc28c43d0dfeca20da`  
		Last Modified: Fri, 20 Nov 2026 19:22:54 GMT  
		Size: 18.9 MB (18939241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aee47687a940319770ed98575b12e729135f411d0496ec89749817f00006118`  
		Last Modified: Fri, 20 Nov 2026 19:22:54 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53718d9b91ce383afca986b93779f3ee50ec542c87d2633efe7569938735698b`  
		Last Modified: Fri, 20 Nov 2026 19:22:53 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:44d2a9baff9328265a834fa7149e71bd84f244ce62c51aa61feeb7dab5a937dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ce4d1afaef3e81f004eee0a94b77b412036b0762d7ac273bc02b673d5431da`

```dockerfile
```

-	Layers:
	-	`sha256:804d219068e889152b2db57e0acaa98298eb55ace130705658110308ad7a70df`  
		Last Modified: Fri, 20 Nov 2026 19:22:54 GMT  
		Size: 3.8 MB (3826222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7c1ddd12a0ec0651713f89cfa28cf3642b95961ceb258c8a68293722bf46ab9`  
		Last Modified: Fri, 20 Nov 2026 19:22:53 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
