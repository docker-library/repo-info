## `clojure:temurin-17-lein-2.13.1-trixie`

```console
$ docker pull clojure@sha256:d3f3f4c8420cacbd196b3b83a8097ce7f658ef2f86fc484da7994af37fb0eaff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.1-trixie` - linux; amd64

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

### `clojure:temurin-17-lein-2.13.1-trixie` - unknown; unknown

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

### `clojure:temurin-17-lein-2.13.1-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d90dee14a9667a5f29a1d336f95dde15be996b42d4017b5c618bc7afc53bfef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.6 MB (221589404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6939ced13e76042b7da541f0a86735b45d4ab767fa7171c1f3bcd68ed2cdda`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:37:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:37:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:37:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:37:01 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:37:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:37:01 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:40:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:40:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:40:11 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:40:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:40:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:40:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:40:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6cb2df50344046ca94b029f7e4e5b65e34c4947074f3ac963db9d64609142f`  
		Last Modified: Tue, 24 Nov 2026 12:41:03 GMT  
		Size: 144.9 MB (144892617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcf20c3f20d1e0b6226d5803287e29bdc89b714bce9d3d54242b0ccd0caf3d9`  
		Last Modified: Tue, 24 Nov 2026 12:41:00 GMT  
		Size: 19.0 MB (18950789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc6d72d7064186d3fd08df47358cd216568e76549c173d2e2497a66a2b9a4e6`  
		Last Modified: Tue, 24 Nov 2026 12:41:00 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1040d918fbf850cb9f0ab1570f3736b6be0568e118feeb81a6edf002d1194356`  
		Last Modified: Tue, 24 Nov 2026 12:40:59 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.1-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:665a005c86f1fd2d30cc634dbc94030143c3d3bae13091fe2f37f27af7ac5629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2375acc4f4bbb38dde899fb69b85c533a3c595e59ac0fb1d33fe45cd72cb40eb`

```dockerfile
```

-	Layers:
	-	`sha256:1e456c7327a965cd9434def1dad990c91b93be9c2dc40a97608c81c216a09918`  
		Last Modified: Tue, 24 Nov 2026 12:40:59 GMT  
		Size: 3.8 MB (3825448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ee1edb711c54c789c3b7f04e7d212059c9a38ef6097e80a9bf55a218498fb92`  
		Last Modified: Tue, 24 Nov 2026 12:40:59 GMT  
		Size: 18.4 KB (18357 bytes)  
		MIME: application/vnd.in-toto+json
