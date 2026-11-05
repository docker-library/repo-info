## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:ef08c540f144e332d97af5ed0872ed6a09c719bcfac3261e8ceea0cfc9d30452
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:5b95ebaa48aedb1c5bc24098760ebd056f27ee7df09ad08b4c60098449bff567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62541736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82a3166c960c83f9c5772f146666f2b9e23c538f1e04be58c79e0c7654d3416`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:21 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:24 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e41ca15c7c328375e097344d0314d91fc2995bbf924c5f2d0746c51140dd8`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 11.7 MB (11721270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cbebcba3cc8be5d9759f7e190f5fe811e57a3d793f434da600a8c79b4f9139`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28877c61a3212989223d642ba740a0d9bea7c14fc5e58fc811785e0587bda97a`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5d1cf06fd328434105d6184861a235e28262727dc5833ee8fb33123a472900`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 90.4 KB (90381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79342d37b01b0b0c2599547851a6d46a58a70c8f43ffabfb5419cef9ea754a3e`  
		Last Modified: Thu, 05 Nov 2026 07:41:32 GMT  
		Size: 422.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7cc9e7910280aabaa49a4a95f0b3c9ed93685ea0959a2c3aad203468d951073d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3603871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4658fc995dfdba1c1d73baf16a2e86ec9cea94e905742157cd46feeea371a3fd`

```dockerfile
```

-	Layers:
	-	`sha256:8c004f4467050bd9642ecb47e725091c5e2f68de8d75a19956a0f808672a6320`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 3.6 MB (3587940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1e894f256da67b76fd8511cf882e1896aa6ad24730b3233d16d07d599eeff0b`  
		Last Modified: Thu, 05 Nov 2026 07:41:31 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:082f152b3cb6176d57c9824790dd1574f206523355c482c7b8f29dff5bfbf352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61154271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cc66b7b040aa7eb0d33896c1c88a9cc1fd9f8b2cc2dc9a091ffe5b9b0f9e3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:45:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:21 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:25 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1bfcb184e5aaac1584836866cecf88d72442c0941a6c318670b28dc48de97e`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 11.2 MB (11193557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb315aca60a592f0f921f5429034a426848ee32669bbdc3f9cfc2f948f597e08`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df1b543e6eba61aa120ef98c53a527d37490f2613145acc9795d59c35093f7a`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169ea84264051c77bbcb0bb0a9c0326ed6e65dd4ae1c66db8d0f2f03b78f7314`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 90.9 KB (90922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20757628b6f27344b7daefbdcf0c54bc3475bd771078c72cd3cc26e03874f2b`  
		Last Modified: Thu, 05 Nov 2026 07:45:35 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:011cd8534175b90d57ff294bc42b7436a3a65f861ef82b96a89fec67571ee359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3607497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95ae63fb68ae0061370731fccc4a7050470f303efeead4011ab41572b82d43e`

```dockerfile
```

-	Layers:
	-	`sha256:8324e902cd535e2a1927fb0f522f6a697b6d539e5041cf059ebfcf04e99438f3`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 3.6 MB (3591426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0584cd2f2f9553e91f1240e64a7c7af6302f642561e255c21c027d24a110aae6`  
		Last Modified: Thu, 05 Nov 2026 07:45:34 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:eb1b8657e0b444956a26e16f62b369f90e16a0c1cef81a88fc211f689f09b113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63785446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88355c00ef8f80a7127e704bc9bd847b83196b82196b2d2942a0c5a2cd6c7d38`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:43:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:43:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:43:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bd8fc96f2c1b6a45d0596f30901d010ec99c7d724ff87ba1afe7cb6893a773`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 11.9 MB (11903045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af0600053c67288da88b52f8f6e3f49221b1dd83db0464b5e95316c45c09199`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd83f17483b5cd87e227e5ad9950c041acc4929c1d77e889c37cf76e799bbfd`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14c2bcefa4bbad8aa0db46ffc9590834e4dd400eabb8ea36f79b0cdf80397d0`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 90.7 KB (90746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ff5c4691d76a437b4083668369a2ec84f017fe5722031da9f24cb391fc9377`  
		Last Modified: Thu, 05 Nov 2026 07:43:17 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:42e39762024891f20f7aeba31fa10c60e3a350560c8b3df2f669c105d1b45065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb9e10879157876753b28ab345f1c4ba92e862657ac8e39b19eb05271622900`

```dockerfile
```

-	Layers:
	-	`sha256:9a7da46ded39598a4b925fb89fe46c0cf9020f10ec7c2fdeb7e338fc11bf570d`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 3.6 MB (3585786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:957696359bee5db97a804393e678c805ed2f0ea0bbc2caf9158c035848edfcb0`  
		Last Modified: Thu, 05 Nov 2026 07:43:16 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
