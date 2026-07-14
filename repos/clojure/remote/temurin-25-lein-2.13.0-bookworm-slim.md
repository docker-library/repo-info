## `clojure:temurin-25-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:e53f6244a8dd599cca4eb76425ead3c1107929a9ab29d9b3c3a038b66ddce50d
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

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:99117c3a46fb687d169727a02ddd8a1838cdb2c6aa48745cce0b6d4e72f257df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143394937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c426d06b7972c6c7abd115f735ba7844a30f22a206cfe9444db0e2211b6bcb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:21:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:21:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:21:26 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:21:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:21:26 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:22:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:22:30 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:22:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:22:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4ec696791eb6ea314d9ad4441cdc6eed99ebf9770e4a8648f4fbf8cfbee01d`  
		Last Modified: Tue, 14 Jul 2026 02:22:49 GMT  
		Size: 92.6 MB (92574607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45910ae76d87ef32797e4ec2d17e8efab6515ad5f28c04fafa3227f422c6c616`  
		Last Modified: Tue, 14 Jul 2026 02:22:47 GMT  
		Size: 18.1 MB (18072060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6b4d23d00a11cc81e927fcca0c008d813de41bb9612b79883bbb6217314ba6`  
		Last Modified: Tue, 14 Jul 2026 02:22:46 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8568fb277787b50586ee985826982ce5cfe907411c37984be42c608e6b05cfcb`  
		Last Modified: Tue, 14 Jul 2026 02:22:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:872f5b65b7f332870cfda314d4aec1676d6cce6261326fd4d55f383cfda245c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6dfc0ec77b955b6e713cf5b9369efaf8deb18a6674c3c0ca97a064569bbf98f`

```dockerfile
```

-	Layers:
	-	`sha256:6d846772b50009855f079f4ea4ec6de5d05c45cf15d6757e63fd6cb3378be073`  
		Last Modified: Tue, 14 Jul 2026 02:22:46 GMT  
		Size: 2.7 MB (2700429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb8236885da10a62f3bd47cbfca89683147ed51d848d41e101043c19a729b84c`  
		Last Modified: Tue, 14 Jul 2026 02:22:46 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:94fca3a6ec30d33aec754e231eb34544577f786e45dce95d4b23619a4fc9454c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142080911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b63285775d15c0b6d3c7133dbc052ea7316bcd15b7d992ee419d06c13ec0389`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:28:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:28:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:28:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:28:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:28:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:28:33 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:29:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:29:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:29:42 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:29:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:29:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:29:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:29:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746642639115a7ca16c4d20ab34c54b49c2243324867cf4360c34a345448e5b7`  
		Last Modified: Tue, 14 Jul 2026 02:30:02 GMT  
		Size: 91.5 MB (91542262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba31e28a34316882900ee8d4ac36f7f2a45d006cf48a499feb8c303134ac6699`  
		Last Modified: Tue, 14 Jul 2026 02:30:01 GMT  
		Size: 17.9 MB (17905791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2cecb2f761181d09e6d14d90c1824c79586185964d0dd9002d1a3e17d1e60d`  
		Last Modified: Tue, 14 Jul 2026 02:30:00 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d198d088bddc48b9aceb7dfd8058c2536e008e7e82635c3ac2d74a46d4a208a0`  
		Last Modified: Tue, 14 Jul 2026 02:30:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a8e606c7dcbde96677bf3a954d9662dc013bb79b8adf112335da849785292c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687f9c228f3df9ca0ca5f56ec2425b6d1c146ffa960ed8dd74437e3b9ed26e7`

```dockerfile
```

-	Layers:
	-	`sha256:fbbb752f45fbcffee0eaa7b3a7e98a44bb97ff46f7d66521eddcf43e17a8ad75`  
		Last Modified: Tue, 14 Jul 2026 02:30:00 GMT  
		Size: 2.7 MB (2700065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:760218ebc938832f27d5e040757561112d486e250a8f0c70c81c3c887e48dc2d`  
		Last Modified: Tue, 14 Jul 2026 02:30:00 GMT  
		Size: 18.6 KB (18572 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:180e95adb7921560817ce3a952e3465e60d808319d1421a82d704bbcbc57ce08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146769722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734d266b7dc5f066cf9a08b72bfc819b4fde604c8f4ca51bf85d98ed1929cc43`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:41:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:41:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:41:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:41:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:41:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:41:41 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:44:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 08:44:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 08:44:28 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 08:44:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 08:44:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:44:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:44:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c3bd8bf364d91dfbb6fabd04678d2f2b26a64b16d0b13aa859f9955dac21e1`  
		Last Modified: Tue, 14 Jul 2026 08:45:08 GMT  
		Size: 91.9 MB (91914041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd13047f9c7f58d2c7a0ffb94f7c3ec8f09dffab1995c165188d3d5785f23a79`  
		Last Modified: Tue, 14 Jul 2026 08:45:06 GMT  
		Size: 18.3 MB (18263605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc8e5d5cb3888c440db15d3a754a13dd244c5661bac389bd6135b609788d2f9`  
		Last Modified: Tue, 14 Jul 2026 08:45:06 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265c601d4d6595e3a3eed68de4899f103342601928249f7cf35fef9a334c37cd`  
		Last Modified: Tue, 14 Jul 2026 08:45:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ada3215e610fc3c614f8a6fe937654d81ed5290dada781161234389c7a0b6e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babab4ff0e65dba12ea05723ff21dc3fcea6f34c7f7574fa40c5b4af85aff38e`

```dockerfile
```

-	Layers:
	-	`sha256:46f35bf47210cc7e647516c7fb1857840db974c7377fcef38dff68ea4b5c8540`  
		Last Modified: Tue, 14 Jul 2026 08:45:05 GMT  
		Size: 2.7 MB (2685586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:492a1d8186c1b2740f2047a5b0641b57e568e83feb750623099840deb8541213`  
		Last Modified: Tue, 14 Jul 2026 08:45:05 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:3f3ac6e67a88f527f738894c8dc21f6a7d2eaef77eb5f863834249a3d29824a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137549053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f83bd8c7e5096dae30106128d6606c5994b4395f0012c3e364f6f4e68e8425a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:33:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:33:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:33:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:33:43 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:33:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:33:43 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:34:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:34:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:34:49 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:34:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:34:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:34:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:34:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467f2e2f5c578a613775dc0ab9f563514a304d9f62c9afff7e0c955ece95fcce`  
		Last Modified: Tue, 14 Jul 2026 04:35:16 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5fca124a5ea023e72b95ba835ffb5879afadaf9014c5aa1c2a0804b07fe4f4e`  
		Last Modified: Tue, 14 Jul 2026 04:35:14 GMT  
		Size: 17.7 MB (17724763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5973a9fa70acec39a18aebb701fd3b4e9dc85b486709fdb652dda4f9f78f6fc`  
		Last Modified: Tue, 14 Jul 2026 04:35:14 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076aefd6cd33337fc7d7eb59fad09a3b75b00bde7a6154c709c4cbec054f9565`  
		Last Modified: Tue, 14 Jul 2026 04:35:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3fcf61c1ed0a4ff456925b2a3927dcc96be468e8349d22674347f01252f8802a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2695233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636febd904b4602c29fba4d3ff1ab1c03e69de7dcea209cd530f6aa8f2ddd629`

```dockerfile
```

-	Layers:
	-	`sha256:9e4de6a34e47eebf6d77b19aac029a2f32f17e6c069658b0ad4423d148398579`  
		Last Modified: Tue, 14 Jul 2026 04:35:14 GMT  
		Size: 2.7 MB (2676805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e821be3468473532362649bfb6a149b6a1cb87f60ce3c8ce43a70a35a416e29`  
		Last Modified: Tue, 14 Jul 2026 04:35:14 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
