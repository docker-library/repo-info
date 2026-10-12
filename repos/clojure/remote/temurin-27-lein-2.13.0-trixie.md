## `clojure:temurin-27-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:8415c1409bbadbf0a6afd9283c8296a9a5f2dd27d236c52787573934dd31c1b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:353d6141ac96b21065dd0b2526ea220eef435be520e9c34316881b320d2eb1b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166418763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b68a84fd63e14467773324394f0911d6e09eb92d9dc0cf4ad0345aef0952d27`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:27:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:27:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:27:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:27:28 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:27:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:27:28 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:28:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:28:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:28:46 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:28:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:28:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:28:47 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:28:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb8d7d73d7c9ec80107bb2f271ea0da3314e40e3e98e7edf8335056ecdb9237`  
		Last Modified: Mon, 12 Oct 2026 18:29:06 GMT  
		Size: 93.6 MB (93622506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370d51a958bc0f71f53c4d26fec2e16893c78d78a3611c415bd4923f0222c50a`  
		Last Modified: Mon, 12 Oct 2026 18:29:04 GMT  
		Size: 18.9 MB (18887451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f6d42b53993ba662d2c7e5ab55f5cdc8f48fd966c61d4f309dc84d1efa1483`  
		Last Modified: Mon, 12 Oct 2026 18:29:03 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa1bd3054d0035e438661af820a05f5d464db7ec6b8779ecc22d2ee4a5fc40`  
		Last Modified: Mon, 12 Oct 2026 18:29:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0a56bc451de0f759f82332447b5a1aca5f36fd59102bbc5f13081dbfa0de1819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e8fff2086301c7cc6b23b90110dcc4904426578f523ae8113d2d657cb8ebc1`

```dockerfile
```

-	Layers:
	-	`sha256:f32adbd5ab26eff8e42d7faf10ac85bbb95cb38132d2e6fd6fcdd3eb96348b80`  
		Last Modified: Mon, 12 Oct 2026 18:29:03 GMT  
		Size: 3.8 MB (3791371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:152deb148c2b47c5457c623efd0d15f4376fae38031db20c55f9586ea5bab2c1`  
		Last Modified: Mon, 12 Oct 2026 18:29:03 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:896addf92d465f6ddae3a50c367ed7651c9cbe8ee6275a7d2bf2601518884f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165755307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78ac473f0a0828c35992c53214fc623e6249c963afac8f470b7fcdd222dd07b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:29:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:29:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:29:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:29:25 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:29:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:29:25 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:30:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:30:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:30:54 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:30:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:30:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:30:56 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:30:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5a87f3299bc3e88de5c4a899d5f6e8ed793c4e807c637c063d32923e53b99c`  
		Last Modified: Mon, 12 Oct 2026 18:31:15 GMT  
		Size: 92.6 MB (92633115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158cd5e32521595df14c03db821ba2684ba9edbcda71141b9ba2235617cf9976`  
		Last Modified: Mon, 12 Oct 2026 18:31:13 GMT  
		Size: 18.8 MB (18845454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d802ab9ba7504a2cdd9e2ca0b6dd5d789b2442e0c3d87743d9ed7512633755`  
		Last Modified: Mon, 12 Oct 2026 18:31:13 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60aa0a81be502976df0b4e6f2605186dd962efa8a43f9914f73a1bb823e2bdd3`  
		Last Modified: Mon, 12 Oct 2026 18:31:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7ba6c8e8760c94bcc97159e5ff28348e6fccc1ad9e7be81fd384f7bc9c0bba9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f537cad94adcf1f0d0dc4974e617f94498f6feb690a171520edde11c0b9f5f`

```dockerfile
```

-	Layers:
	-	`sha256:cbe2fd0aba43ac1f5b121b857d5ce18cd4a829d816ee18d617fb94bf946b34be`  
		Last Modified: Mon, 12 Oct 2026 18:31:13 GMT  
		Size: 3.8 MB (3791608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcf909c7ed1ea46e09832b2f0641c2ee7320d06b26d937403d8fb0b5c27e1c06`  
		Last Modified: Mon, 12 Oct 2026 18:31:13 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d9309ce4c1b33f4b39a397350e438d39542c453a6596fe9c81fd317d39595ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168920532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6b9831756b127b64658535c5afa222f7c546fe370b13dffaa8320c61353edb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:24:57 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:24:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:24:57 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:29:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:29:08 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:29:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:29:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:16 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66789879b74ef4c50b963b364c5e07afd02510d614ef8efeba36872b53353679`  
		Last Modified: Mon, 12 Oct 2026 18:30:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aad93cae1fded95e82282b1af6b3e6b09ec126c505ea7a219cf24bba68940e1`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 18.9 MB (18941959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd903c7b4f5e02c80fa48ec6b8973d08b2a3ccc31726acc08d9f34014ced25e`  
		Last Modified: Mon, 12 Oct 2026 18:30:01 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569e2917ad38a727450d9a3f8faea941e3b6083efd503a27f50709ea20858aed`  
		Last Modified: Mon, 12 Oct 2026 18:30:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ea4cbfeb5dc57b970487da1417ae491dfaed910a95ef448060c5ab8dff255825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3794060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fcd03c9b64bbcbecb275f714833388024c00eff1b48bc0a4b01162b746ed0e`

```dockerfile
```

-	Layers:
	-	`sha256:724629c8c9e82882467e0e160f0e14815ee612379df66a4c8b2c48d90a9eb6b6`  
		Last Modified: Mon, 12 Oct 2026 18:30:00 GMT  
		Size: 3.8 MB (3776305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fd84eb290e2b5f61b0869fe6264de4ebaa581bb1530005987e15bb40f4efd00`  
		Last Modified: Mon, 12 Oct 2026 18:30:00 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
