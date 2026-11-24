## `clojure:temurin-27-lein-2.13.1`

```console
$ docker pull clojure@sha256:ff01f6aa0d0529654ed3d5d71bbc53bb803f14f3b672a5a7a594b0ee3b6e0de6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.1` - linux; amd64

```console
$ docker pull clojure@sha256:e40b07e62868b24bc29cf8980f5cda2ead2215a5839d2dc78c3a3d0091df2c02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166824584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd510bdc6f872708175fcf93844ade52eb50c904211b59368038d910024ad009`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:13:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:11 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:13:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:13:11 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:14:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:14:25 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:14:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99371b2f1f7a7ed7dd74e81145ebff3dd5da8741a71f66957f75b1c415c02104`  
		Last Modified: Tue, 24 Nov 2026 05:14:47 GMT  
		Size: 93.6 MB (93649638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4869568a2dd61a0dc1cf07126b301ad3f89fd8d7732f10a04342c0f880035d`  
		Last Modified: Tue, 24 Nov 2026 05:14:45 GMT  
		Size: 20.1 MB (20132436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05685248228be0d16984558a156135bd58d64fbda0ec9cd26294e886a75c362e`  
		Last Modified: Tue, 24 Nov 2026 05:14:45 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af88ab6888a87b05d40caeedadb5eab19f146d67e76d526f1c5d364098f3322`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1` - unknown; unknown

```console
$ docker pull clojure@sha256:9e1fe49ed08f5ed22f636d3aa9b1aa3e3dcefe3802e28e8d9214d5d8cd62ac7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490f44376fe204e41d5300b0d2aedb44b8debd7b52671e7aa714a38054288248`

```dockerfile
```

-	Layers:
	-	`sha256:59a23d716631627bf8e27d47c096c596c4addcead084a3f808b20daffa2e035f`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 4.3 MB (4252300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07df26d5c1e2e775f3bdbed534cec46ea02d27cf08e5bc25f251028a9fda3810`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 19.0 KB (18976 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.1` - linux; ppc64le

```console
$ docker pull clojure@sha256:f3e54ea8e7b583a8432e5ea0ec55f3c35b8915ad995c1b69a1565dba13132292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169174503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c06254b2059022238a4b24522b4d9f71fa0cf5f6a970c98a0c25c9ec8af1b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:57:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:57:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:57:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:57:05 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:57:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:57:06 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:37:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:37:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:37:54 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:37:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:37:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:37:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:37:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f512e475e60dd5f0311febda94f2e5a8411f9077eceb64aefdb2f2369ae97a9b`  
		Last Modified: Fri, 20 Nov 2026 20:01:22 GMT  
		Size: 91.9 MB (91933317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08641567654aec6ed42a9a6221a45d531a57fcf6e0934307edd638e7b5849ff6`  
		Last Modified: Tue, 24 Nov 2026 00:38:20 GMT  
		Size: 20.4 MB (20356399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b786207a3197f667db2e619356594e1ef2590c0c66c3971370d1b0314ab73b60`  
		Last Modified: Tue, 24 Nov 2026 00:38:19 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8640cb6c86b66adb5df3500fabc0fb58930e07ea3608735dc1e83b6312e92e`  
		Last Modified: Tue, 24 Nov 2026 00:38:19 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1` - unknown; unknown

```console
$ docker pull clojure@sha256:ba1f4f4ae1f92898a80f2936612ee7924f7277293634e4dc2402d0466082d672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4255280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d66a5c1806d6a2497b689083c77939f233e1304c19667907de88d39a8c2c7e7`

```dockerfile
```

-	Layers:
	-	`sha256:605c3caab500296387c2c8287ffad3ea0accac9602ff9e71c95e6eaf2419d2b6`  
		Last Modified: Tue, 24 Nov 2026 00:38:19 GMT  
		Size: 4.2 MB (4236248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:398861e3e2d976d9b876afcbec182a807bb3ab7348ed0208aae854e7b43289b7`  
		Last Modified: Tue, 24 Nov 2026 00:38:19 GMT  
		Size: 19.0 KB (19032 bytes)  
		MIME: application/vnd.in-toto+json
