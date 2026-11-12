## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:0b26ac084709a03ffc39ba33c8812d332e4303ff5208d8c34ac6ae945b505cfd
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
$ docker pull clojure@sha256:2a560722fb1471bc2bf9d5efc24fbf8c2f7bdf04efacd8d8c5245d553156b463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218899720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7294df453bc0f8c2d31f93299fe60d959be6c0a9f091bfa0b2ca3c981a37e966`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:48:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:48:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:48:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:48:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:48:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:48:15 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:49:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:49:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:49:33 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:49:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:49:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:49:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:49:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16de16f271dbec431e82fb3625eff0f564d98fd9ef94bc6309289a85c60beee3`  
		Last Modified: Thu, 12 Nov 2026 00:49:56 GMT  
		Size: 146.1 MB (146086152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03af2479502c743cd368442b94d2daf68d345f46787eeea1bcd455cd72dec4ae`  
		Last Modified: Thu, 12 Nov 2026 00:49:53 GMT  
		Size: 18.9 MB (18884943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e595787835e2451bd1eb2db4146f71965298336b8fa26717d62f8f68085fdd7f`  
		Last Modified: Thu, 12 Nov 2026 00:49:53 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a857df3cbc4419475d1d816bb1bdcd26dd136e5018dd238438691703434422`  
		Last Modified: Thu, 12 Nov 2026 00:49:52 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2cc4928db31e9271dba04c5a5d2ae01c6d80a3238a14b4aebd826b21e3c964ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322a4315c482a2d562f4052ca1015cfec8e477fdcf8d13902317e5144203cb52`

```dockerfile
```

-	Layers:
	-	`sha256:e47c80edf11172e9b7b3ea4452abe0b9afb27d372d79b09015b676ed44f30b3f`  
		Last Modified: Thu, 12 Nov 2026 00:49:52 GMT  
		Size: 3.8 MB (3826462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d81d5879c47a7be545b0445c17753a5608c74ee2ca13310b53a05604031ac5`  
		Last Modified: Thu, 12 Nov 2026 00:49:52 GMT  
		Size: 17.7 KB (17718 bytes)  
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
$ docker pull clojure@sha256:f832140414f7e33eb583de6f0eb52fbefa0f8fde4f0c5b62618b34cc4ba106c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221541601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4944feca01d7eaccd39a5c5a6273383e78581f04372ca80b42dac634081611`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 08:13:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:13:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:13:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:13:26 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 08:13:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 08:13:28 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:18:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 08:18:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 08:18:10 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 08:18:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 08:18:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:18:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:18:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beea9cbb2d380277e6a8c6fc2fa108cc20798179bbc6cfe404f3bf23b52f54c7`  
		Last Modified: Thu, 12 Nov 2026 08:18:57 GMT  
		Size: 144.9 MB (144859692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb29e9d41398439c4a286fea596713b12046bba15e0b874677a097230218316`  
		Last Modified: Thu, 12 Nov 2026 08:19:15 GMT  
		Size: 18.9 MB (18940135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18584c00ca9d7fa26d6da39d0858e8e8fe1d89ce7d13b604d8d59a630509a9a9`  
		Last Modified: Thu, 12 Nov 2026 08:19:15 GMT  
		Size: 4.5 MB (4515252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4214f68cfdc7b12c1c0b50cd5b39f630382aa8f31f6e5232d6dc3922a01c2090`  
		Last Modified: Thu, 12 Nov 2026 08:19:14 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f362d65f45174c9132832429a25bdbfdbeb47b48cc089e9a4ccbcbb4e3cab551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ec9d6d0e2fb629e40e2b26d11c62ad0af7d518a7e522277c1625e0870cc380`

```dockerfile
```

-	Layers:
	-	`sha256:75f3ba5465c0eb97ebd176b0d931c6a41f7f3b74cd8ccaf75f514dab93e2ddf9`  
		Last Modified: Thu, 12 Nov 2026 08:19:15 GMT  
		Size: 3.8 MB (3826214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41cee2ce44a94145fa0dd9d7e76e86332ade14804444c97a240e657e8b5cbce1`  
		Last Modified: Thu, 12 Nov 2026 08:19:14 GMT  
		Size: 17.8 KB (17761 bytes)  
		MIME: application/vnd.in-toto+json
